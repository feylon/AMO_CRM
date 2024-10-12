import { Router } from "express";
import Joi from "joi";
import pool from "../../functions/database.js";
import { check } from "../../functions/bcrypt.js";
import {sign} from "../../functions/jwtAdmin.js"



const router = Router();

router.post("/", async function (req, res, next ) {
  const Schema = Joi.object({
    login: Joi.string().min(3).max(15).required(),
    password: Joi.string().min(3).max(25).required(),
  });

  const { login, password } = req.body;
  const checkSchema = Schema.validate(req.body);
  if (checkSchema.error)
    return res.status(400).send({ error: checkSchema.error.message });
  try {

    let data = await pool.query(
       "Select id, login, password from admin where login = $1",
      [login]
    );


    if (data.rows.length == 0) {
      res.status(401).send({ error: "Login topilmadi" });
      
      return;
    }

    let checkAuth = await check(password, data.rows[0].password);
    if (checkAuth) {
      const token = sign(data.rows[0].id)
      res.status(200).send({token});
      
      return;
    } else {
      
      return res.status(401).send({ error: "Parol xato" });
    }  
  } catch (error) {
    console.log(error);
  }
});

export default router;


/**
 * @swagger
 * components:
 *   securitySchemes:
 *     bearerAuth:
 *       type: http
 *       scheme: bearer
 *       bearerFormat: JWT
 *   schemas:
 *     AdminLogin:
 *       type: object
 *       required:
 *         - login
 *         - password
 *       properties:
 *         login:
 *           type: string
 *           description: The admin's login username
 *           minLength: 3
 *           maxLength: 15
 *         password:
 *           type: string
 *           description: The admin's login password
 *           minLength: 3
 *           maxLength: 25
 *       example:
 *         login: admin123
 *         password: passw0rd123
 */

/**
 * @swagger
 * /admin/login:
 *   post:
 *     summary: Admin login
 *     tags: [Admin]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             $ref: '#/components/schemas/AdminLogin'
 *     responses:
 *       200:
 *         description: Admin successfully logged in
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 token:
 *                   type: string
 *                   description: JWT token for the authenticated session
 *       400:
 *         description: Invalid login credentials
 *       500:
 *         description: Internal server error
 */

/**
 * @swagger
 * /admin/protected:
 *   get:
 *     summary: A protected route
 *     tags: [Admin]
 *     security:
 *       - bearerAuth: []    # Requires Bearer Token authentication
 *     responses:
 *       200:
 *         description: Access granted
 *       401:
 *         description: Unauthorized (Missing or invalid token)
 *       500:
 *         description: Internal server error
 */
