import Joi from "joi";
import { Router } from "express";
import { checktoken } from "../../../functions/jwtAdmin.js";
import pool from "../../../functions/database.js";
import { hashpassword } from "../../../functions/bcrypt.js";
import { limiter } from "../../../functions/limiter.js";
const router = Router();

const Schema = Joi.object({
  login: Joi.string().min(5).max(15).required(),
  password: Joi.string().min(7).max(25).required(),
  firstname: Joi.string().min(3).max(15).required(),
  email: Joi.string().min(3).max(25).required().email(),
  lastname: Joi.string().min(3).max(15).required(),
  viloyat_id: Joi.number().min(0).max(14).required().integer(),
  tuman_id: Joi.number().min(15).max(225).integer(),
  active: Joi.boolean().required(),
});




router.post("/", [limiter, checktoken], async function (req, res, next) {
  if (Schema.validate(req.body).error)
    return res.status(400).send(Schema.validate(req.body).error.message);

  let { login, email, password, firstname, lastname, viloyat_id, tuman_id, active } =
    req.body;
    try {
      password = await hashpassword(password);
      login = login.toLowerCase();
      email = email.toLowerCase();``
      let data = await pool.query(`insert into admin (login, email, password, firstname, lastname, viloyat_id, tuman_id, active,  struct) 
            values 
            ($1, $2, $3, $4, $5, $6, $7,$8, $9)       
        
        `,
      [login, email, password, firstname, lastname, viloyat_id, tuman_id, active, false]
      );
      return res.status(201).send({Created : true});
    } catch (error) {
      if(error.code == "23505") return res.status(406).send({error : error.detail})
        console.log(error);
        res.status(500).send("Server Error")
    }
});

export default router;
