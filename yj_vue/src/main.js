import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import Vuelazyload from 'vue-lazyload'
//等效于node中的const axios=require("axios")
// import tail from './components/tail'
import {Button,Select,DatePicker,Dialog,Checkbox,CheckboxGroup,Radio,RadioGroup
,Carousel,CarouselItem} from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import { timingSafeEqual } from 'crypto';
//可以控制组件的大小
Vue.prototype.$ELEMENT = { size: 'small', zIndex: 3000 };
Vue.component(Button.name,Button);
Vue.component(Select.name,Select);
Vue.component(DatePicker.name,DatePicker);
Vue.component(Dialog.name,Dialog);
Vue.component(Checkbox.name,Checkbox);
Vue.component(CheckboxGroup.name,CheckboxGroup);
Vue.component(Radio.name,Radio);
Vue.component(RadioGroup.name,RadioGroup);
Vue.component(Carousel.name,Carousel);
Vue.component(CarouselItem.name,CarouselItem);
// 图片懒加载功能
Vue.use(Vuelazyload)

//注册自定义组件
// Vue.component(tail.name,tail)
Vue.config.productionTip = false
//让axios的请求携带验证信息到服务端
//如果
axios.defaults.withCredentials=true;
Vue.prototype.axios=axios;
//xxx.vue中： this.axios.get(...)
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
