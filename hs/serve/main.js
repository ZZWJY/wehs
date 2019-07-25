const express=require('express');
//引入路由器
const indexrouter=require('./router/index.js')
const bodyparse=require("body-parser")
const jwt=require("./jwt")
const user=require("./router/user")
const session = require("express-session");
const loginrouter=require('./router/login.js')
//创建web服务器
var server=express();
//创建io对象

const cors=require("cors");
server.listen(3000);
//解析post请求中的数据
server.use(bodyparse.json())
//使用路由器
//使用(挂载)的url: /user
// /user/login
server.use(cors({
	origin:["http://127.0.0.1:8080",
   "http://localhost:8080"],
	credentials:true
}))
server.use(session({
//用来注册session id 到cookie中，相当与一个密钥。
secret:"128位字符串",
//是否允许session重新设置，要保证session有操作的时候必须设置这个属性为true
resave:true,
//是否设置session在存储容器中可以给修改
　　//session过期30分钟，没有人操作时候session 
//30分钟后过期，如果有人操作，每次以当前时间为起点
//使用原设定的maxAge重设session过期时间到30分钟
//只有这种业务场景必须同行设置resave rolling为true
//同时saveUninitialized要设置为false允许修改。
   saveUninitialized:true
 }))
//使用中间件来验证token令牌，如果通过在执行下一步
server.use((req,res,next)=>{
   if(req.url!="/login"&&(req.url.startsWith("/use")||req.url.startsWith("/orders"))){
      let token=req.headers.token;
      let result=jwt.verifyToken(token)
      if(result===undefined){
         res.send({status:403,msg:"未提供证书"})
      }else if(result.name==="TokenExpiredError"){
         res.send({status:403,msg:"登录超时"})
      }else if(result.name==="JsonWebTokenError"){
         res.send({status:403,msg:"证书出错"})
      }else{
         req.user=result
         next()
      }
   }else{
      next()
   }
})
http=require("http").Server(server)
 io=require("socket.io")(http)
 io.on("connection",function(socket){
    console.log("一个用户连接")
   //  console.log("a used connected")
    socket.on("disconnect",function(){
       console.log("一个用户已经退出")
    })
    socket.on("chat message",function(data){
       io.emit("message",data)
    })
  
 })
 http.listen(2900,function(){
    console.log("2900")
 })
server.use(express.static("public"))
server.use('/index',indexrouter)
server.use('/login',loginrouter)
server.use("/user",user)

