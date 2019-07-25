const fs=require("fs");
const jwt=require("jsonwebtoken");
const path=require("path");
//生成token
function generateToken(data){
    let num=Math.random()
        data.num=num
    let create=Math.floor(new Date()/1000)
    let cert=fs.readFileSync(path.join(__dirname,"./pem/rsa_private_key.pem"))
    let token=jwt.sign({
        data,
        exp:create+60*60
    },cert,{algorithm:"RS256"})
    return token
};
function verifyToken(token){
    let cert=fs.readFileSync(path.join(__dirname,"./pem/rsa_public_key.pem"))
    let res;
    try{
        if(token!==undefined){
            let result=jwt.verify(token,cert,{algorithms:"RS256"})||{}
            res=result.data||{}
        }
    }catch(e){
        res=e
    }
    return res
}
module.exports={generateToken,verifyToken}