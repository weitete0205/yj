const express=require("express");
const router=express.Router();
const pool=require("../pool");
router.get("/",(req,res)=>{
    var sql=`select uname,email from yj_user`
    pool.query(sql,(err,result)=>{
        if(err) console.log(err)
        res.send(result)
    })
})
router.get("/denglu",(req,res)=>{
    var name=req.query.phone;
    var password=req.query.password;
    var email=req.query.email
    var sql2=`INSERT INTO  yj_user(uname,upwd,email) ` 
    sql2+=`VALUES('${name}','${password}','${email}');`
    pool.query(sql2,(err,result1)=>{
        if(err)console.log(err)
        res.send(result1)  
    })
})
module.exports=router;