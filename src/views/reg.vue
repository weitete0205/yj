<template>
    <div>
        <el-button type="text" @click="dialogVisible = true">点击打开 Dialog</el-button>
        <el-dialog 
        title="登录" 
                :visible.sync="dialogVisible" center 
                width="30%"  
                :before-close="handleClose" >
                <input type="text" placeholder="    手机号或邮箱" class="dialog" 
                style="margin-top:0px" v-model="account" @click="zh1" :style="input1">
                <p class="p1" :style="p1style">账号需要在3-8之间的数字或者字母</p>
                <input type="password" placeholder="    请输入密码" class="dialog"
                v-model="password1" @click="mm1" :style="input2">
                <p class="p2" :style="p2style">密码在6-10位的数字加字母</p>
                <input type="password" placeholder="    请输入密码" class="dialog"
                v-model="password2" @click="mm2" :style="input3">
                <p class="p3" :style="p3style">两次输入密码需要一致</p>
                <span slot="footer" class="dialog-footer">
                  <el-button @click="dialogVisible = false">取 消</el-button>
                  <el-button type="primary" @click="dialogVisible = false">登 录</el-button>
            </span>
        </el-dialog>
    </div>
</template>
<script>
export default {
    data() {
      return {
        dialogVisible: false,
        account:'',
        password1:'',
        password2:'',
        input1:{borderRadius:''},
        input2:{borderRadius:''},
        input3:{borderRadius:''},
        p1style:{color:""},
        p2style:{color:""},
        p3style:{color:""},
        login:{display:''}
      };
    },
    watch:{
        account(){this.zh2()},
      password1(){this.mm3()},
      password2(){this.mm4()}
    },
    methods: {
      handleClose(done) {
        this.$confirm('确认关闭？')
          .then(_ => {
            done();
          })
          .catch(_ => {});
      },
      zh1(){
        this.p1style.display="block"
        this.input1.borderRadius="3px"
      },
      zh2(){
        var  res=/^\w{6,10}$/
        if(res.test(this.account)==false||this.account==""){ 
          this.p1style.display="block"
          this.p1style.color="#e44848a8"
        }else{
          this.p1style.display="none"
        }
      },
      mm1(){
        this.p2style.display="block"
        this.input2.borderRadius="3px"
      },
      mm2(){
        this.p3style.display="block"
        this.input3.borderRadius='3px'
      },
      mm3(){
        var respassword=/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,10}$/
        if(respassword.test(this.password1)==false||respassword==""){
        this.p2style.display="block"
        // this.p2style.border="1px solid red"
        this.p2style.color="#e44848a8" 
        }else{
        this.p2style.display="none"
        }
        },
        mm4(){
        if(this.password1==this.password2){
          this.p3style.display="none"
        }else{
        this.p3style.display="block"
        this.p3style.border="1px solid #e44848a8"
        this.login.display="block"
        }
      }
  }    
}
</script>
<style scoped>
.dialog{
    width:80%;
    height:40px;
    margin:10px 0px 10px 30px;
    border-radius:3px;
    border:1px solid #409EFF;
}
.p1,.p2,.p3{
    display:none;
    width:80%;
    transition:1s;
    font-weight:bold;
    font-size:12px;
}

</style>