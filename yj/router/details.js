const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
    var lid=req.query.lid
     var sql=`select * from yj_laptop where lid=?`
    pool.query(sql,[lid],(err,result)=>{
        if(err) console.log(err)
        if(result.length>0){
            pool.query(`select * from yj_laptop_num where lid=?`,[lid]
            ,(err,result_num)=>{
                if(err)console.log(err)   
            var result1=result.concat(result_num)
                pool.query(`select * from yj_laptop_img where lid=?`,
            [lid],(err,result_img)=>{
                if(err)console.log(err)
            var result2=result1.concat(result_img)
                res.send(result2)
            })
            })
        }
    })
})
router.get("/dianzan",(req,res)=>{
    var uid=req.session.uid
    var lid=req.query.lid;
    var a=req.query.like;
    if(!uid){
        res.send({code:-1,msg:"请登录"});
    }else{
        a++;
        console.log(a)
        var sql=`UPDATE  yj_laptop  SET  a_like=?  WHERE  lid=?`
        var sql2=`select * from yj_laptop where lid=?`
        pool.query(sql,[a,lid],(err,result1)=>{
            if(err)console.log(err)
            pool.query(sql2,[lid],(err,result)=>{
                if(err)console.log(err);
                res.send(result)
            })
        })
    }
})
module.exports=router;