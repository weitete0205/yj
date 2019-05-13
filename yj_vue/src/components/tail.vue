<template >
  <div id="tail">
    <div>
      <div class="yujian">
        <p><router-link to="">遇见</router-link></p>
        <router-link to="">工作机会</router-link>
        <router-link to="">新闻</router-link>
        <router-link to="">政策</router-link>
        <router-link to="">帮助</router-link>
        <router-link to="">多元化与归属感</router-link>
      </div>
      <div class="yujian">
        <p><router-link to="">发现</router-link></p>
        <router-link to="">信任与安全</router-link>
        <router-link to="">旅行基金</router-link>
        <router-link to="">商务差旅</router-link>
        <router-link to="">旅游指南</router-link>
        <router-link to=""></router-link>
      </div>
      <div class="yujian">
        <p><router-link to="">出租</router-link></p>
        <router-link to="">为什么要出租</router-link>
        <router-link to="">待客之道</router-link>
        <router-link to="">房东义务</router-link>
        <router-link to="">开展体验</router-link>
        <router-link to="">open Homes</router-link>
      </div>
      <div class="yujian" @click="zichuanfu1">
        <span class="iconfont">&#xe71d;</span>
        <span class="iconfont">&#xe61d;</span>
        <router-link to="">条款</router-link>
        <router-link to="">隐私政策</router-link>
        <router-link to="" >网站地图</router-link>
      </div>
    </div>
    <div>
        <span>陕ICP备16017121号-3 陕ICP证 160773号 陕公安备网694109804号 遇见网络（陕西）有限公司</span>
    </div>
  </div>
</template>
<script>
// import Vue from 'vue'
export default {
  props:['lx'],
data(){
  return{
    a:'99'
  }
},
created(){
},
methods:{
  zichuanfu1(){
    // 当鼠标点击zichuanfu1的事件的时候执行传值
    this.$emit('zichuanfu',this.a)
  }
},
}
</script>
<style scoped>
#tail>:nth-child(1){
  width: 1200px;
  margin: 50px auto 50px;
  display: flex;
  justify-content: space-around;
}
.yujian>p{
  margin: 10px 0px 10px 0px;
  font-size: 15px;
  color: #333;
  font-weight: bold;
}
.yujian a{
  display: block;
  text-decoration: none;
  color: #666;
  margin: 5px 0 5px 0;
}
.yujian a:hover{
  color: #333;
}
.yujian span{
  display: inline-block;
  width: 20px;
  margin: 0 8px 0 0;
}
#tail>:nth-child(2){
  width: 1200px;
  margin: 0 auto;
  text-align: center;
}
</style>
