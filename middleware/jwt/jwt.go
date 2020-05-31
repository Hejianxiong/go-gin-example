package jwt

import (
	"github.com/HeJianxiong/go-gin-example/pkg/custerr"
	"github.com/HeJianxiong/go-gin-example/pkg/util"
	"github.com/gin-gonic/gin"
	"net/http"
	"time"
)

func JWT() gin.HandlerFunc {
	return func(c *gin.Context) {
		var code int
		var data interface{}

		code = custerr.SUCCESS
		token := c.Query("token")
		if token == "" {
			code = custerr.INVALID_PARAMS
		} else {
			claims, err := util.ParseToken(token)
			if err != nil {
				code = custerr.ERROR_AUTH_CHECK_TOKEN_FAIL
			} else if time.Now().Unix() > claims.ExpiresAt {
				code = custerr.ERROR_AUTH_CHECK_TOKEN_TIMEOUT
			}
		}

		if code != custerr.SUCCESS {
			c.JSON(http.StatusUnauthorized, gin.H{
				"code": code,
				"msg":  custerr.GetMsg(code),
				"data": data,
			})

			c.Abort()
			return
		}

		c.Next()
	}
}
