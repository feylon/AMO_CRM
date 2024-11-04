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
