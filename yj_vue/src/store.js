import Vue from 'vue'
import Vuex from 'vuex'
Vue.use(Vuex)
export default new Vuex.Store({
  state: {
    url:"http://106.13.120.8:3000/",
    //验证账号是否为手机号
    res1:/^1[3-7][0-9]{9}$/,
    //验证账号是否为邮箱
    res2:/^\/w+([-+.]w+)*@w+([-.]w+)*.w...$/,
    //验证账号是是否为账号
    res3:/^[a-zA-Z0-9]{6,10}$/,
    //验证密码是否符合合适的正则
    res4:/^[a-zA-Z0-9]{8,12}$/,
    // 储存用户的用户名
    uanme:''
  },
  mutations: {
    name(state,name1){
      state.uanme=name1
    }
  },
  actions: {
    getname(context,name1){
      context.commit('name',name1)
    }
  }
})
