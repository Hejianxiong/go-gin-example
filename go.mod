module github.com/HeJianxiong/go-gin-example

go 1.14

require (
	github.com/alecthomas/template v0.0.0-20190718012654-fb15b899a751
	github.com/astaxie/beego v1.12.1
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/fvbock/endless v0.0.0-20170109170031-447134032cb6 // indirect
	github.com/gin-gonic/gin v1.6.3
	github.com/go-ini/ini v1.57.0
	github.com/go-openapi/spec v0.19.8 // indirect
	github.com/go-openapi/swag v0.19.9 // indirect
	github.com/go-playground/validator/v10 v10.3.0 // indirect
	github.com/go-sql-driver/mysql v1.5.0 // indirect
	github.com/golang/protobuf v1.4.2 // indirect
	github.com/jinzhu/gorm v1.9.12
	github.com/mailru/easyjson v0.7.1 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.1 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/swaggo/files v0.0.0-20190704085106-630677cd5c14
	github.com/swaggo/gin-swagger v1.2.0
	github.com/swaggo/swag v1.6.6
	github.com/unknwon/com v1.0.1
	golang.org/x/net v0.0.0-20200528225125-3c3fba18258b // indirect
	golang.org/x/sys v0.0.0-20200523222454-059865788121 // indirect
	golang.org/x/tools v0.0.0-20200530233709-52effbd89c51 // indirect
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
