const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
     var sql=`select * from yj_laptop where lid=?`
    pool.query(sql,[1],(err,result)=>{
        if(err) console.log(err)
        res.send(result);
    })   
})
module.exports=router;