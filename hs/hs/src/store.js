var store=new Vuex.Store({
    //定义全局修改的数据
    state:{
      serveinfo:{},
      oldproduct:[],
      uname:'',
      islogin:false
    },
    mutations:{
      reserve(state,obj){
        state.serveinfo=obj
      },
      setUname(state,value){
        state.uname=value
      },
      setlogin(state,value){
        state.islogin=value
      },
      setoldproduct(state,value){
        // if(value instanceof Array){
        //   state.oldproduct.concat(vlaue)
        //   return
        // }
        state.oldproduct.push(value)
      },
      reloadoldproduct(state,value){
        var value=value.split(",")
        state.oldproduct=value
      }
    },
    getters:{
      getServeingo(state){
        return state.serveinfo
      },
      getUname(state){
        return state.uname
      },
      getoldproduct(state){
        return state.oldproduct
      }
    }
  })