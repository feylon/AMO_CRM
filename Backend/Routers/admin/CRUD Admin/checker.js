import Joi from "joi";
import { Router } from "express";
import { checktoken } from "../../../functions/jwtAdmin.js";
import pool from "../../../functions/database.js";

const router = Router();
const Schema = Joi.object({
  login: Joi.string().required(),
});
router.post("/", checktoken, async function (req, res, next) {
  if (Schema.validate(req.body).error)
    return res
      .status(400)
      .send({ error: Schema.validate(req.body).error.message });
  let { login } = req.body;
  try {
    let data = await pool.query(
      `SELECT count(*) FROM admin WHERE login ILIKE '%' || $1 || '%'`,
      [login]
    );
    data.rows[0].count != 0
      ? res.status(200).send({ hasadmin: true })
      : res.status(200).send({ hasadmin: false });
  } catch (error) {
    res.status(500).send({ error: "Server error" });
    console.log(error);
  }
});
export default router;

/**
 * @swagger
 * /admin/hasadmin:
 *   post:
 *     summary: Check if an admin login exists
 *     description: Endpoint to check if a given admin login exists in the database.
 *     security:
 *       - bearerAuth: [] # Assuming you are using Bearer Token authentication
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               login:
 *                 type: string
 *                 description: The login name to check for existence.
 *                 example: "admin123"
 *     responses:
 *       200:
 *         description: Successful operation
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 hasadmin:
 *                   type: boolean
 *                   description: Indicates if the admin login exists.
 *                   example: true
 *       400:
 *         description: Validation error
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   description: Validation error message.
 *                   example: "login is required"
 *       500:
 *         description: Server error
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   description: Error message indicating a server issue.
 *                   example: "Server error"
 */