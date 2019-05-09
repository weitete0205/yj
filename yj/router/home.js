const express=require("express");
const router=express.Router();
const pool=require("../pool");
router.get("/",(req,res)=>{
    var sql=`select img,city,rid from yj_home`;
    var sql2=`select * from yj_home_img `;
    var sql3=`select * from yi_home_renqi `
    var result3=[];
    pool.query(sql,(err,result)=>{
        if(err)console.log(err)
        result3.push(result)
        pool.query(sql2,(err,result2)=>{
            if(err)console.log(err);
            result3.push(result2)
            pool.query(sql3,(err,result4)=>{
                if(err)console.log(err);
                result3.push(result4)
                console.log(result4)
                res.send(result3)
            })
        })
    })

})
router.get("/search",(req,res)=>{
    var a=req.query.tuijian;
    var sql=`select * from yj_home where city LIKE '%${a}%'
    or area LIKE '%${a}%' or prov LIKE '%${a}%' `
    pool.query(sql,(err,result)=>{
        if(err) console.log(err);
        res.send(result)
    })
})
module.exports=router;