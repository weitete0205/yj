const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
    // var count=0;
    // var pageSize=9;
    // var pageCount=0;
    // var pno=req.query.pno;
    var result4=[]
    var rid=req.query.rid
     var sql=`select * from yj_reg where rid=? `
    pool.query(sql,[rid],(err,result)=>{
        if(err)console.log(err)  
        result4.push(result)
    pool.query("select name,address,price,area,md_img,address_img,lid from yj_laptop where rid=?",
    [rid],(err,result3)=>{
        result4.push(result3)
        if(err)console.log(err)      
    pool.query("select md_img  from yj_laptop_img where rid=?",
    [rid],(err,result5)=>{
        if(err)console.log(err)
        result4.push(result5)
        res.send(result4)
    })
    }
    )
    })
})
router.get("/chaxun",(req,res)=>{ 
var min=req.query.min;
var max=req.query.max;
    var aa=0;
    var  result1=[];
    var sql2=`select * from yj_laptop where price>=${min[aa]} and price<=${min[aa+1]} `
    var sql1=`select * from yj_laptop  where chaxun like '%${max[aa]}%'`
    for(var a=2;a<min.length;a+=2){
        sql2+=`or price>=${min[a]} and price<=${min[a+1]}`
    }
     pool.query(sql2,(err,result)=>{
         result1=result1.concat(result)
        if(err)console.log(err)
        for(var s=1;s<max.length;s++){
            sql1+=` and chaxun   LIKE '%${max[s]}%' `
        }
        pool.query(sql1,(err,result2)=>{
            if(err) console.log(err)
				console.log(result2)
            result1=result1.concat(result2)
            if(result1.length>0){
                var sql3=`select md_img from yj_laptop_img where lid=${result1[0].lid}`
                for(var q=1;q<result1.length;q++){
                    sql3+=` or lid=${result1[q].lid}`
                }
                pool.query(sql3,(err,result6)=>{
                    if(err) console.log(err)
                    result1.push(result6)
                    res.send(result1)
                })
            }
            
        })
    })           
}
)
// router.get("/queren",(req,res)=>{ 
// var a1=req.query.checkList2;
// var sql1=`select * from yj_laptop where price>=${a1[0]} and price<=${a1[1]}`
//     pool.query(sql1,(err,result)=>{
//         if(err)console.log(err)
//         res.send(result)
//         console.log(result)    
//    () })
// });
module.exports=router;