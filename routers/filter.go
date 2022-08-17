package routers

import (
	"fmt"

	"github.com/beego/beego/v2/server/web/context"
)

// 跨域中间件
func FilterCors(ctx *context.Context) {
	ctx.Output.Header("Access-Control-Allow-Origin", "*")
}

// 哈喽中间件
func FilterHello(ctx *context.Context) {
	fmt.Println("---hello world---")
}
