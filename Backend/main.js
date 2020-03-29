
const express = require("express");
const mysql = require("mysql2/promise");

let db = null;
const app = express();

app.use(express.json);
app.post("/register-doctor",async(req,res,next)=>{
    const name = req.body.name;
    const detail = req.body.detail;

    await db.query("INSERT INTO doctor(name) VALUES (?);",[name]);
    res.json({status:"OK"});
    next();

    await db.query("INSERT INTO doctor(detail) VALUES (?);",[detail]);
    res.json({status:"OK"});
    next();
})

async function main(){
db = await mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"alchemy",
    timezone:"+00:00",
    charset:"utf8mb4_general_ci",

});

app.listen(8000);

}

main();