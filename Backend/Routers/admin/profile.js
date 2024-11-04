import { Router } from "express";
import pool from "../../functions/database.js";
import { checktoken, getid } from "../../functions/jwtAdmin.js";
import logger from "../../functions/log.js";


const router = Router();

router.get("/", checktoken,  async function(req, res){
   try {
      
     let id = getid(req, res);
    

    const data = await pool.query(`SELECT 
        admin.login as admin_login,
        admin.firstname as admin_firstname,
        admin.lastname as admin_lastname,
        admin.profil_url as admin_profil_url,
        viloyat.name_uz as viloyat_uz,
        viloyat.name_oz as viloyat_oz,
        viloyat.name_ru as viloyat_ru,
        tuman.name_uz as tuman_uz,
        tuman.name_oz as tuman_oz,
        tuman.name_ru as tuman_ru
        FROM admin
        inner join viloyat on admin.viloyat_id = viloyat.id
        inner join tuman on admin.tuman_id = tuman.id
        where admin.id = $1;`,[id]);
        res.send(data.rows[0]);;
        return
        
   } catch (err) {

console.log(err)
const errorObject = {
   message: err.message,      // Xato xabari
   name: err.name,            // Xato turi (Error nomi)
   stack: err.stack           // Stack trace (qo'shimcha ma'lumot)
};

console.log(errorObject); // Server log uchun
logger.error('Error Details:', errorObject);    
   }
});
export default router;