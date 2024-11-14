package main

import (
	"github.com/gin-gonic/gin"
)

func main() {
	// 创建一个默认的 Gin 路由引擎
	r := gin.Default()

	// 定义一个 GET 请求的路由
	r.GET("/", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "Hello, World!",
		})
	})

	// 启动服务
	r.Run() // 默认在 8080 端口
}
