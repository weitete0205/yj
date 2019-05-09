<template>
    <div class="app-login">
      <div class="bg">
          <div class="login">
              <router-link :to="`/home`">&lt;返回首页</router-link> 
              <div class="logo">
                  <img src="../img/logo100.png" alt="">
              </div>
              <div class="text">
                  <p>在遇见最好的旅途</p>
              </div>
              <div class="logindiv">
                  <div class="input">
                      <div>
                        <span @click="putong">普通方式登录</span>
                        <span @click="phone">手机动态验证码登录</span>
                      </div>
                  <div :style="putong1" > 
                      <span class="iconfont" :style="zhanghao1">&#xe65e;请正确格式的邮箱/手机号/用户名</span>
                      <span class="iconfont" :style="mima1">&#xe65e;请输入密码</span>
                      <span class="iconfont" :style="yanzhengma1">&#xe65e;请输正确验证码</span>
                      <div></div>
                      <input type="text" placeholder="请输入邮箱/手机号/用户名" v-model="zhanghao">
                      <input type="password" placeholder="请输入密码" v-model="mima">
                      <input class="yanzheng" type="text" placeholder="请输入验证码">
                      <!-- <div class="s-canvas">
                            <canvas id="s-canvas" ></canvas>
                      </div> -->
                      <a href="javascript:;">忘记密码</a>
                      <p @click="denglu1">登录</p>
                  </div>
                  <div class="phone" :style="phone1">
                      <span class="iconfont" >&#xe65e;请输入账号</span>
                      <span class="iconfont">&#xe65e;请输入密码</span>
                      <span class="iconfont">&#xe65e;请输入验证码</span>
                      <div></div>
                      <input type="text" placeholder="请输入邮箱/手机号/用户名">
                      <input class="yanzheng" type="password" placeholder="请输入验证码">
                      <input class="yanzheng" type="text" placeholder="请输入动态验证码">
                      <a href="javascript:;">忘记密码</a>
                      <p @click="denglu1">登录</p>
                  </div>
                  </div>
                  <div class="qita">
                      <p>合作网站账号登录</p>
                      <div>
                          <span class="iconfont">&#xe71d;</span>
                          <span class="iconfont">&#xe626;</span>
                          <span class="iconfont">&#xe62a;</span>
                      </div>
                      <span>还不是遇见网会员?</span>
                      <a href="javascript:;">点击去注册>></a>
                      <div>
                          <img src="../img/erweima.jpg" >
                          <span class="iconfont">&#xe727;<a href="javascropt:;">Android</a></span>
                          <span class="iconfont">&#xe627;<a href="javascropt:;">iphone</a></span>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      <my-tail></my-tail>
    </div>
</template>
<script>
import myTail from "@/components/tail.vue";
export default {
    name: 'SIdentify',
    data() {
        return{
            //普通用户登录的样式
            putong1:{
                display:""
            },
            //手机登录的样式
            phone1:{
                display:""
            },
            //验证账号是否为手机号
            res1:/^1[3-7][0-9]{9}$/,
            //验证账号是否为邮箱
            res2:/^\/w+([-+.]w+)*@w+([-.]w+)*.w...$/,
            //验证账号是是否为账号
            res3:/^[a-zA-Z0-9]{6,10}$/,
            //验证密码是否符合合适的正则
            res4:/^[a-zA-Z0-9]{8,12}$/,
            //存放用户普通登录输入的账号
            zhanghao:[],
            //存放用户普通登录输入的密码
            mima:[],
            //存放用户普通登录输入的验证码
            yanzhengma:[],
            //存放普通登录提示用户账号格式不正确的文字
            zhanghao1:{
                display:''
            },
            mima1:{
                display:''
            },
            yanzhengma1:{
                display:''
            },
        }
    },
    methods:{
                //默认选中普通登录
        //当点击选择普通登录时候
        putong(){
            //将普通登录按钮选择为显示
            this.putong1.display="block"
            //将手机登录按钮选择为隐藏
            this.phone1.display='none'

        },
        //当点击手机验证码登录时候
        phone(){
            //将手机登录选择为显示
            this.phone1.display="block"
            //将普通登录选择为隐藏
            this.putong1.display="none"    
        },
        denglu1(){
            //如果账号正则验证通过就执行密码的正则验证
            console.log(1)
            if(this.res1.test(this.zhanghao)==true||this.res2.test(this.zhanghao)==true||
            this.res3.test(this.zhanghao)==true){
                //如果密码格式正确
                if(this.res4.test(this.mima)==true){
                    //就将提示账号提示框和密码提示框隐藏
                    this.mima1.display=""
                    this.zhanghao1.display=""
                    this.axios.get("http://127.0.0.1:3000/login",
                    {params:{zhanghao:this.zhanghao,mima:this.mima}}
                    ).then(res=>{
                        if(res.data.code==-1){  
                             alert('账号或者密码有误登录失败');  
                        }else{
                        alert('登录成功 点击确认返回首页') 
                                 this.tiaozhuan();

                        }
                       
                    })
                }else{
                //如果密码格式不正确就提示用户账号格式不正确    
                   this.mima1.display="block" 
                }
            //如果账号格式不正确就提示用户账号格式不正确
            }else{
                this.zhanghao1.display="block"
            }
        },
        tiaozhuan(){
            //当点击确定按钮后跳转回
            this.$router.push(
                {path:'home',
                components:'home'})
        },
    },
    watch:{},
    mounteds:{},
    components:{myTail}
}
</script>
<style scoped>
/* 登录页背景图 */
    .bg{
        background:url("../img/loginbg/body04.jpg");
        width:100%;
        height:700px;
        overflow: hidden;
    }
    /* 登录和logodiv */
    .login{
        margin:0 auto;
        width: 570px;
        position: relative;
        margin-top:60px;
    }
    .login>a{
        color: #fff;
        font-size: 15px;
        text-decoration: none;
        margin: -40px 0 0 -230px;
    }
    .login>a:hover{
        border-bottom: 1px solid #fff;
    }
    .logo{
       margin:0 auto; 
       width: 110px;
    }
    .text{
        text-align: center;
        font-size: 30px;
        color: #fff;
        font-family: 方正舒体;
        margin:0 0 15px 0;
    }
    .logindiv{
        display: flex;
        justify-content: space-around;
        background:rgba(0,0,0,0.5)
    }
    /* 登录输入区域的div */
    .input{
        position: relative;
        border-right: 1px dashed #333;
        margin: 20px 0 20px 0;
    }
    .input>:nth-child(1){
        width: 285px;
        color: #b4b4b4;
        display: flex;
        justify-content:space-around;
        text-align: center;
        margin: 10px 0 0 0; 
        position: relative;
        transition: 1s;
    }
    .input>:nth-child(2),
    .input>:nth-child(3){
        position: absolute;
        
    }
    /* 手机登录选择框 */
    .phone{
        display: none;
        transition: 1s;
    }
    /* 密码框和账号输入框 */
    .input>:nth-child(2)>input,
    .input>:nth-child(3)>input{
        display:block;
        width:240px;
        margin: 20px 0px 0px 20px;
        height:30px;
    }
    /* 图形验证验证码输入框 */
    .input>:nth-child(2)>.yanzheng,
    .input>:nth-child(3)>.yanzheng{
        width:120px;
    }
    /* 登录按钮 */
    .input>:nth-child(2)>p,
    .input>:nth-child(3)>p{
        display: block;
        width: 240px;
        height: 30px;
        background: #f60;
        margin: 20px 0px 0px 20px;
        border-radius: 5px;
        text-align: center;
        padding-top: 5px;
        color: wheat;
    }
    /* 登录按钮鼠标悬停时候的样式 */
    .input>:nth-child(2)>p:hover,
    .input>:nth-child(3)>p:hover{
        background: #ef965a;
    }
    .input>:nth-child(2)>a,
    .input>:nth-child(3)>a{
        font-size: 12px;
        margin-left:200px;
        margin-top: 10px;
    }
    /* 验证是否输入为空时候的提示语句 */
    .input>:nth-child(2)>span,
    .input>:nth-child(3)>span{
        color: #ff5756;
        font-size: 12px;
        left: 10px;
        top: 5px;
        position: absolute;
        display: none; 
    }
    .input>:nth-child(2)>div{
		height:5px;
	}
    /* 登录输入区域右边的图标区域 */
    .logindiv>.qita{
        width: 285px;
        margin: 20px 0 20px 0;
    }
    .logindiv>.qita>p{
        display: block;
        margin: 10px 0 0 80px;
        color: #b4b4b4;
    }
    .logindiv>.qita>:nth-child(2){
        margin-top: 22px;
        display: flex;
        justify-content: space-around;
    }
    .logindiv>.qita  span{
        font-size: 30px;
        color: #b4b4b4;
    }
    .logindiv>.qita  span:hover{
        color: white;
    }
    .logindiv>.qita>:nth-child(3){
        display: inline-block;
        margin: 30px 0 0 50px;
        font-size: 10px;
    }
    .logindiv>.qita>:nth-child(4){
        font-size: 15px;
    }
    .logindiv>.qita>:nth-child(5){
        position: relative;
    }
    .logindiv>.qita>:nth-child(5)>span{
        display: inline-block;
        border-radius: 5px;
        border: 1px solid wheat;
        font-size: 17px;
        position: absolute;
        width: 150px;
        height: 30px;
        top:50px;
        left: 120px;
        text-align: center;
        padding-top: 4px;
    }
    .logindiv>.qita>:nth-child(5)>:nth-child(2){
        top:90px;
    }
    .logindiv>.qita>:nth-child(5)>img{
        margin: 40px 0 0 15px;
        width:100px;
        height: 100px;
    }
</style>
