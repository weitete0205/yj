<template>
<div>
  <my-header></my-header>
  <el-carousel :interval="4000" type="card" height="400px" >
    <el-carousel-item v-for="i of lunbotu" :key="i.id" height="400px" >
       <img  height="400px" width="100%" :src="i.img" :data-lid="i.lid" @click="lunbogoods">
    </el-carousel-item> 
  </el-carousel>
  <!-- <el-carousel :interval="5000" arrow="always" height="500px">
    <el-carousel-item v-for="i of lunbotu" :key="i.id" height="500px" >
       <img  height="500px" width="100%" :src="i.img" :data-lid="i.lid" @click="lunbogoods">
    </el-carousel-item>
  </el-carousel>  -->
  <div class="goods">
    <div class="search">
     <!-- 导航下面搜索框 -->
     <form action="" >
         <span class="iconfont">&#xeb9e;
             <input type="text" placeholder="目的地/景点/关键词" @focus="search" 
         v-model="tuijian" @keyup.enter="search2"  
         ></span>       
         <span class="iconfont">
         <datalist  id="d3">
             <option >单人</option>
             <option >双人</option>
             <option >三人</option>
             <option >四人</option>
             <option >五人</option>
             <option >更多</option>
         </datalist>
         &#xe6da; 
         <input type="text" list="d3" placeholder="请选择人数">
         </span>
         <el-button type="primary" @click="search1" >搜索</el-button>
      </form>
    </div>
    <div class="goods1">
      <div class="remen">
        <p>热门地区</p>
        <div >
          <div :style="zuoyou">
              <div v-for="i of remenimg" :key="i.id"
             @mouseenter="fangda" @mouseleave="fangda3">
              <router-link :to="`/goods/${i.rid}`"><img :src="i.img" alt=""></router-link>
              <span v-text="i.city"></span>
            </div>
          </div>
          <p class=" zuo" @click="zuo1" :style="zuo2">
            <i class="iconfont"> &#xe619;</i>
          </p>
          <p class="you"  @click="you1" :style="you2">
            <i class="iconfont">&#xe61b;</i>
          </p>
        </div>
      </div>
      <div class="renqi">
        <p>人气推荐</p>
          <div >
            <div :style="renqituijian2">
              <div v-for="i of renqituijian " :key="i.id" @mouseenter="fangda" @mouseleave="fangda3">
                <router-link :to="`/details/${i.lid}`" ><img :src="i.img" alt=""></router-link>
                <p><span v-text="i.name"></span><span >{{`￥`}}{{i.price}}</span></p>
              </div>
            </div>
            <p class=" zuo" @click="renqizuo" :style="renqizuo1">
            <i class="iconfont"> &#xe619;</i>
          </p>
          <p class="you " @click="renqiyou" :style="renqiyou1">
            <i class="iconfont">&#xe61b;</i>
          </p>
          </div>
      </div>
      <div class="yujian">
        <div>
          <p>期待每次旅途都能最好的遇见</p>
        </div>
        <div>
          <span @click="ouzhou3" :class="ouzhou4">遇见欧洲</span>
          <span @click="haitan3" :class="haitan4">遇见海滩</span>
        </div>
        <div class="haitan" :style="haitan">
          <div class="haitan1" >
            <div v-for="i of haitan1" :key="i.id"
             @mouseenter="fangda4" @mouseleave="fangda5">
              <img :src="i.img" alt="">
              <span>{{i.city}}</span>
            </div>
          </div>
          <div class="haitan2">
            <div v-for="i of haitan2" :key="i.id" 
            @mouseenter="fangda4" @mouseleave="fangda5">
              <img :src="i.img" alt="">
              <span>{{i.city}}</span>
            </div>
          </div>
        </div>
        <div class="ouzhou" :style="ouzhou">
            <div class="haitan1">
            <div v-for="i of ouzhou1" :key="i.id"
             @mouseenter="fangda4" @mouseleave="fangda5">
              <img :src="i.img">
              <span>{{i.city}}</span>
            </div>
          </div>
          <div class="haitan2">
            <div v-for="i of ouzhou2" :key="i.id"
             @mouseenter="fangda4" @mouseleave="fangda5">
              <img :src="i.img" alt="">
              <span>{{i.city}}</span>
            </div>
          </div>
        </div>
      </div>
    </div>
      <div class="jieshao">
        <div class="jiedai">
          <p class="iconfont">&#xe62b;</p>
          <span>中文接待</span>
          <span>房东和房客沟通无障碍</span>
          <span>深度体验当地生活</span>
        </div>
      <div class="jiedai">
        <p class="iconfont">&#xe66e;</p>
        <span>身份验证</span>
        <span>手机号或身份验证</span>
        <span>确保个人信息的真实性</span>
      </div>
      <div class="jiedai">
        <p class="iconfont">&#xe629;</p>
        <span>安全交易</span>
        <span>第三方支付担保，安全便捷</span>
        <span>支持多种付款和收款方式</span>
      </div>
      <div class="jiedai">
        <p class="iconfont">&#xe633;</p>
        <span>全球房源</span>
        <span>覆盖全球50多个国家</span>
        <span>200多个地区</span>
      </div>
    </div>
  </div>
  <my-tail></my-tail>
</div>
</template>
<script>
import myTail from "@/components/tail.vue"
import myHeader from "@/components/header.vue"
export default {
  data(){
    return{
      tuijian:[],
      tuijianstyle2:{
        background:'',
      },
      guoneistyle:{
        background:"",
      },
      guowaistyle:{
        background:''
      },
      //存放轮播图的照片
      lunbotu:[],
      //存放热门地区的照片
      remenimg:[],
      //存放人气推荐的数据
      renqituijian:[],
      //存放热门推荐的div的样式 控制左右移动
      zuoyou:{
        marginLeft:'',
      },
      //控制热门地区左切换的图标
      zuo2:{
        display:'none'
      },
      //控制热门地区右切换的图标
      you2:{
        display:''
      }, 
      //控制热门左右切换的点击的次数
      s:0,
      //控制人气左右切换点击的次数
      a:0,
      //存放人气推荐的div的样式 控制左右移动
      renqituijian2:{
        marginLeft:''
      },
      //控制热门地区左切换的图标
      renqizuo1:{
        display:'none'
      },
      //控制热门地区右切换的图标
      renqiyou1:{
        display:''
      },
      //存放欧洲上面两组照片的数组
      ouzhou1:[],
      //存放欧洲下面两组照片的数组
      ouzhou2:[],
      //存放海滩上面照片的数组
      haitan1:[],
      //存放海滩下面照片的数组
      haitan2:[],
      //存放海滩区域的样式
      haitan:{
        display:""
      }, 
      //存放欧洲区域的样式
      ouzhou:{
        display:''
      },
      //遇见欧洲文字的样式
      ouzhou4:"active",
      //遇见海滩文字的样式
      haitan4:''
    }
  },
  created(){
    this.axios.get("http://127.0.0.1:3000/home")
    .then(res=>{
      //将轮播图存贮在轮播图的数组里
      this.lunbotu=res.data[1];
      //将热门地区放在热们img的数组里
      this.remenimg=res.data[0].slice(6,12)
      //存放人气推荐的数据
      this.renqituijian=res.data[2]
      //将欧洲上面的照片放在欧洲1里
      this.ouzhou1=res.data[0].slice(12,14)
      //将欧洲下面的照片放在欧洲2里
      this.ouzhou2=res.data[0].slice(14,17)
      //将海滩上面的照片放在haitan1里
      this.haitan1=res.data[0].slice(17,19)
      //将海滩下面的照片放在haitan2里
      this.haitan2=res.data[0].slice(19,22)
    })
    
  },
  methods:{
    //当搜索框获得焦点时候
        search(){
            //控制推荐部分为显示推荐按钮修改背景色
            this.tuijianstyle=true
            this.tuijianstyle2.background="#fff"
            //并将其他两个按钮背景修改
            this.guoneistyle.background="#e9f0fa"
            this.guowaistyle.background='#e9f0fa'
        },
        lunbogoods(e){
          //当用户点击首页的轮播图后执行跳转
          //e 是当前点击对象  e.target.dataset.lid是放在自定义属性里面的lid
          this.$router.push({
            path:`/details/${e.target.dataset.lid}`,
            comments:'Details'
          })
        },
        //当鼠标进入热门地区时候的将当前的div放大
        fangda(e){
          e.path[0].style.transform="scale(1.07,1.07)"
        },
        //当鼠标离开当前div的时候放大取消
        fangda3(e){
          e.path[0].style.transform=""
        },
        zuo1(){
          //当点击左边的按钮时先将this.s减1
         if(this.s>=1){
           this.s-=1;
           var m=-245;
         this.zuoyou.marginLeft=m*this.s+"px"
         //将右边的按钮改为显示
         this.you2.display="block"
          if(this.s==0){
            this.zuo2.display="none"
          }
         }else{
           //如果s等于1  就将左边的按钮隐藏
           this.zuo2.display="none"
         }
        },
        you1(){
          //判断响应回来的数据的长度
          var a=this.remenimg.length-5;
          if(a>=1){
            this.s+=1;
            var m=-245;
            this.zuoyou.marginLeft=this.s*m+"px"
            //将右边的箭头改为显示
            this.zuo2.display="block"
            if(this.s==a){
              //执行完边距相加后如果s==a就把右边的箭头隐藏
              this.you2.display="none"
            }
            //否则s就+1
          }else{this.you2.display="none"}
          //如果a不是大于等于1 就将右边的箭头隐藏
        },
        renqizuo(){
            //当点击左边的按钮时先将this.s减1
         if(this.a>=1){
          this.a-=1;
          var m=-410;
         this.renqituijian2.marginLeft=m*this.a+"px"
         //将右边的按钮改为显示
         this.renqiyou1.display="block"
          if(this.a==0){
            this.renqizuo1.display="none"
          }
        }else{
           //如果s小于1  就将左边的按钮隐藏
           this.renqizuo1.display="none"
          }
        },
        renqiyou(){
          //判断响应回来的数据的长度
          var q=this.renqituijian.length-3;
          if(q>=1){
            this.a+=1;
            var m=-410;
            this.renqituijian2.marginLeft=this.a*m+"px"
            //将左边的箭头改为显示
            this.renqizuo1.display="block"
            if(this.a==q){
              //执行完边距相加后如果s==a就把右边的箭头隐藏
              this.renqiyou1.display="none"
            }
          }else{this.you2.display="none"}
          //如果a不是大于等于1 就将右边的箭头隐藏
        },
        ouzhou3(){
          //当点击遇见欧洲时
          this.haitan.display="none"
          this.ouzhou.display="block"
          this.ouzhou4="active"
          this.haitan4=""
        },
        haitan3(){
          //当点击遇见海滩时
          this.ouzhou.display="none"
          this.haitan.display="block"
          this.haitan4="active"
          this.ouzhou4=""
        },
        fangda4(e){
          e.path[0].style.transform="scale(1.01,1.01)"
        },
        fangda5(e){
          e.path[0].style.transform=""
        },
        //当点击搜索键的时候
        search1(){
          this.axios.get("http://127.0.0.1:3000/home/search",{
            params:{tuijian:this.tuijian}
          }).then(res=>{
            var rid=res.data[0].rid
            this.$router.push({
              path:`/goods/${rid}`,
              comments:"Goods"})
          })
        },
        search2(){
          this.search1()
        } 
  },
  components:{
    myTail,myHeader
  }
}
</script>
<style scoped>
  .el-carousel__item h3 {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    line-height: 200px;
    margin: 0;
     
  }
  .el-carousel__item:nth-child(2n) {
    background-color: #d3dce6;
  } 
  .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  }
  .goods{
    width: 1200px;
    margin: 0 auto;
  }
  .search{
    margin:15px  20px 0 20px;
    padding-bottom:15px;
    border-bottom: 1px solid #ddd;
}
.search span{
    font-size:20px;
    display:inline-block;
    padding:0px 10px 0px 10px;
}
.search>form>:nth-child(1){
    border-right:2px solid #ddd;
}
.search>form>span>input{
    
    width:300px;
    height:37px;
    border:0;
}
.search button{
    width:200px;
    height:37px;
    font-size:16px;
}
.remen,.renqi{
  position: relative;
  
}
.remen>:nth-child(1){
  font-size: 30px;
  display: inline-block;
  margin: 20px 0 20px 0;
}
.renqi>:nth-child(1){
  font-size: 30px;
  display: inline-block;
  margin: 40px 0 40px 0;
}
.remen>:nth-child(2),
.renqi>:nth-child(2){
  overflow: hidden;
}
.remen>:nth-child(2)>div,
.renqi>:nth-child(2)>div{
  width: 1200px;
  display: flex;
  transition: 1s;
}
.remen>:nth-child(2)>div>div{
  width: 220px;
  height: 295px;
  margin: 10px 25px 10px 0px;
  position: relative;
}
.remen>:nth-child(2)>div>div>span{
  position: absolute;
  z-index: 1;
  left:10px;
  top:265px;
  color: #fff;
  font-size: 20px;
}
.zuo{height: 300px; position: absolute; top: 90px; left: -50px;}
.you{height: 300px; position: absolute; top:90px;  right: -50px;}
.you>i,.zuo>i{
  color: #9daab7;
  font-size: 50px;
  display: inline-block;
  margin-top: 130px;
}
.renqi>:nth-child(2)>div>div{
  width: 390px;
  height: 249px;
  margin: 10px 20px 10px 0px;
  position: relative;
}
.renqi>:nth-child(2)>div>div>p{
  position: absolute;
  top:220px;
  left: 10px;
  color: #fff;
  font-size: 20px;
}
.yujian{
  margin-top:80px;
}
.yujian>:nth-child(1)>p{
 text-align: center;
 font-size: 46px;
 color: #666;
}
.yujian>:nth-child(2){
  text-align: center;
  margin-top: 50px;
  margin-bottom: 30px;
}
.yujian>:nth-child(2)>span{
  margin:10px 10px 10px 10px;
  color: #666;
  font-size: 20px;
  padding-bottom: 5px;
}
.active{
  border-bottom:2px solid #666;
  color: #323232;
}
.haitan{
  transition: 0.5s;
  display: none;
}
.haitan1{
  display: flex;
  justify-content: space-between;
  margin: 10px 0 15px 0;
}
.haitan1>div{
  height: 387px;
  overflow: hidden;
  position: relative;
}
.haitan2>div{
  position: relative;
}
.haitan1>div>span,
.haitan2>div>span{
  position: absolute;
  left: 10px;
  color: #fff;
  font-size: 20px;
}
.haitan2>div>span{
  top:222px;
}
.haitan1>div>span{
  top:350px;
}
.haitan2{
  display: flex;
  justify-content: space-between;
}
.jieshao{
  margin: 80px 0 150px 0;
  display: flex;
  justify-content: space-around;
  border-top: 1px solid #a7a2a2;
}
.jiedai{
  height: 200px;
}
.jiedai>p{
  margin: 50px 0 30px 0;
  font-size: 60px;
  color: #bbb7b7;
  text-align: center;
}
.jiedai>span{
  display:block;
  text-align: center;
  margin: 10px 0 10px 0;
}
.jiedai>:nth-child(2){
  font-size: 25px;
}
</style>
