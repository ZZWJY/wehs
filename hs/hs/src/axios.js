//  将引入axios库单独保存在一个文件中
//  减少main。js的代码量
//1 引入vue实例
import Vue from "vue" 
//2 引入axios实例
import axios from "axios" 
import qs from "qs"
import { Store } from "vuex";
 const Axios=axios.create({
//3 发送请求时保存session信息
// axios.defaults.withCredentials=true
    baseURL:"http://127.0.0.1:3000/",
    withCredentials:true
//4 设置发送请求基础路径
// axios.defaults.baseURL="http://127.0.0.1:3000/"
   
 })
   Axios.interceptors.request.use(
   
//      config=>{
//         //请求拦截器
//         //axios默认post请求参数为查询字符串
//         //如果是post请求，利用qs模块将查询字符串转化为对象
//         if(config.method==="post"){
//             config.data=qs.stringify(config.data)
//         }
//         return config
//     },err=>{
     
//     }
    config=>{
      console.log("进入拦截器")
      if(sessionStorage.getItem("token")){
        config.headers.token=sessionStorage.getItem("token")
      }
      if(localStorage.getItem("token")){
        config.headers.token=localStorage.getItem("token")
      }
      return config
      },error=>{
        return Promise.reject(error)
      }
    
  )
  Axios.interceptors.response.use(res=>{
    if(res.data.status==403){
      localStorage.removeItem("token")
      localStorage.removeItem("name")
      // Store.commit("setlogin",false)
      // Store.commit("setUname","")
    }
    return res
  })
//5 将axios注册实例

export default {
    install: function(Vue, Option){
      Vue.prototype.axios=Axios;
    }
  }


//6 将main.js引入aioxs