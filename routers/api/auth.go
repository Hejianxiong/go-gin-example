package api

import (
	"github.com/HeJianxiong/go-gin-example/models"
	"github.com/HeJianxiong/go-gin-example/pkg/custerr"
	"github.com/HeJianxiong/go-gin-example/pkg/logging"
	"github.com/HeJianxiong/go-gin-example/pkg/util"
	"github.com/astaxie/beego/validation"
	"github.com/gin-gonic/gin"
	"net/http"
)

type auth struct {
	Username string `valid:"Required; MaxSize(50)"`
	Password string `valid:"Required; MaxSize(50)"`
}

func GetAuth(c *gin.Context) {
	username := c.Query("username")
	password := c.Query("password")

	valid := validation.Validation{}
	a := auth{Username: username, Password: password}
	ok, _ := valid.Valid(&a)

	data := make(map[string]interface{})
	code := custerr.INVALID_PARAMS
	if ok {
		isExist := models.CheckAuth(username, password)
		if isExist {
			token, err := util.GenerateToken(username, password)
			if err != nil {
				code = custerr.ERROR_AUTH_TOKEN
			} else {
				data["token"] = token

				code = custerr.SUCCESS
			}

		} else {
			code = custerr.ERROR_AUTH
		}
	} else {
		for _, err := range valid.Errors {
			logging.Info(err.Key, err.Message)
		}
	}

	c.JSON(http.StatusOK, gin.H{
		"code": code,
		"msg":  custerr.GetMsg(code),
		"data": data,
	})
}
