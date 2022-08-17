## 介绍
a beego demo

## 文章
- [bee generate自动生成代码 以及注解路由 @router](https://blog.csdn.net/ma_jiang/article/details/111410832)
- [beego 注册路由失效404，commentsRouter.go没有生成](https://www.cnblogs.com/xiaochongchong/p/16092190.html)

## 注意
- 不能使用超链接，要手动切换到/usr/local/gopath1.16/src/apiproject。这可能是beego的一个bug
- beego 注册路由失效404，commentsRouter.go没有生成。执行bee generate routers试试，或者切换bee版本再试试
- 过滤器就是gin中的中间件

## 基础指令
```
// 创建web项目
bee new myproject

// 打包
bee pack -pe GOOS=linux
```

## bee生成controller、view、models
```
//单独生成controller
bee generate controller HanyunController

//单独生成view
bee generate view hanyun

//单独生成model
bee generate model goods
```

## bee根据数据库生成models
```
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '新闻标题',
  `cid` int(11) DEFAULT NULL COMMENT '新闻分类',
  `created_time` date DEFAULT NULL COMMENT '新闻发布时间',
  `content` text COMMENT '新闻内容',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='新闻表';

bee generate appcode -tables="news" -conn="root:123456@tcp(127.0.0.1:3306)/beego"

bee api demo -conn="root:123456@tcp(127.0.0.1:3306)/beego"
```

## 路由设置
```
// 通过第三个参数"get:Hello"来耦合路由和业务handler
beego.Router("/hello", &controllers.MainController{}, "get:Hello")

// 注解
```