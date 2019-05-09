import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index.vue'
import Details from './views/details'
import login from './views/login'
import Goods from './views/goods.vue'
import home from './views/Home'
// import Index from './views/Index'
Vue.use(Router)
export default new Router({
  routes: [
    {path:'/',component:home},
    // {path:'/Index',component:Index},
    {path:"/details/:lid", component:Details,props:true},
    {path:"/login",component:login,},
    {path:"/goods/:rid",component:Goods,props:true},
    {path:"/home",component:home},
    {path:'/*',component:Index}
  ]
})
