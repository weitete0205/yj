const express=require("express");
const router=express.Router();
const pool=require("../pool");
router.get("/",(req,res)=>{
    var uname=req.query.zhanghao;
    var upwd=req.query.mima;
    var sql=`select * from yj_user where uname=? and upwd=?`
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err)console.log(err);
        if(result.length>0){
            req.session.uid=result[0].uid
            res.send({code:1,msg:'登录成功'})
        }else{
            res.send({code:-1,msg:'登录失败'}) 
        }
    })
})
module.exports=router;