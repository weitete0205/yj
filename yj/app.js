//使用express构造web服务器
const express = require('express');
const bodyParser = require('body-parser');
const cors=require("cors");
const session=require("express-session")
/*引入路由模块*/
const details=require("./router/details")
const index=require("./router/index")
const goods=require("./router/goods")
const login=require("./router/login")
const home=require("./router/home")
const reg=require("./router/reg")
var app = express();
var server = app.listen(3000);
app.use(session({
   secret:"155", //配置密钥
   resave:false,//每次请求是否更新数据
   saveUninitialized:true //保存初始化的数据
}))
app.use(cors({
   "origin":["http://106.13.120.8:80/",
   "http://127.16.0.4:80",
   "http://localhost:8080/",
   "http://106.13.120.8:3000/",
	   "http://192.168.1.110:8080"
],
   credentials:true
}));
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//托管静态资源到public目录下
app.use(express.static('public'));
/*使用路由器来管理路由*/
app.use("/details",details);
/* 使用路由器来管理路由*/
app.use("/index",index);
//使用路由器来管理路由
app.use("/goods",goods);
//使用登录路由器来管理路由
app.use("/login",login);
//使用首页路由器来管理路由
app.use("/home",home);
//使用注册路由器来管理路由
app.use("/reg",reg)