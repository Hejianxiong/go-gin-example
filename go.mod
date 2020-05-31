module github.com/HeJianxiong/go-gin-example

go 1.14

require (
	github.com/astaxie/beego v1.12.1
	github.com/gin-gonic/gin v1.6.3
	github.com/go-ini/ini v1.57.0
	github.com/go-playground/validator/v10 v10.3.0 // indirect
	github.com/go-sql-driver/mysql v1.5.0 // indirect
	github.com/golang/protobuf v1.4.2 // indirect
	github.com/jinzhu/gorm v1.9.12
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.1 // indirect
	github.com/unknwon/com v1.0.1
	golang.org/x/sys v0.0.0-20200523222454-059865788121 // indirect
	google.golang.org/protobuf v1.24.0 // indirect
	gopkg.in/yaml.v2 v2.3.0 // indirect
)

replace (
	github.com/HeJianxiong/go-gin-example/conf => D:/nonepath/go-gin-example/pkg/conf
	github.com/HeJianxiong/go-gin-example/middleware => D:/nonepath/go-gin-example/middleware
	github.com/HeJianxiong/go-gin-example/models => D:/nonepath/go-gin-example/models
	github.com/HeJianxiong/go-gin-example/pkg/custerr => D:/nonepath/go-gin-example/pkg/custerr
	github.com/HeJianxiong/go-gin-example/pkg/setting => D:/nonepath/go-gin-example/pkg/setting
	github.com/HeJianxiong/go-gin-example/pkg/util => D:/nonepath/go-gin-example/pkg/util
	github.com/HeJianxiong/go-gin-example/routers => D:/nonepath/go-gin-example/routers
)
