package main

import (
	"fmt"
	"github.com/HeJianxiong/go-gin-example/pkg/setting"
	"github.com/HeJianxiong/go-gin-example/routers"
	"net/http"
)

func main() {

	s := &http.Server{
		Addr:           fmt.Sprintf(":%d", setting.HTTPPort),
		Handler:        routers.InitRouter(),
		ReadTimeout:    setting.ReadTimeout,
		WriteTimeout:   setting.WriteTimeout,
		MaxHeaderBytes: 1 << 20,
	}

	s.ListenAndServe()
}
