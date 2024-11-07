import express from "express"
import dotenv from "dotenv";
import http from "http";
import cors from "cors";
import cookieParser from "cookie-parser";
import swaggerUi  from "swagger-ui-express";
import swaggerJSDoc from "swagger-jsdoc";




// Functions
import pool from "./functions/database.js";



global.pool = pool;
// (async ()=>{
    
//     try {
//         await global.pool.connect();
//         console.log("Ulanish hosil qilindi")
//     } catch (error) {
//         console.log(error)
//     }
// })()



 

// Middlewares
const app = express();
// Middleware for error handling

  
app.use(cors());
app.use(cookieParser());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static("./public"));

// Swagger

const swaggerOptions = {
  definition: {
    openapi: "3.0.0",
    info: {
      title: "AMOCRM",
      version: "1.0.0",
      description: "AMOCRM uchun swagger",
    },
    servers: [
      {
        url: "http://localhost:4100",
      },
    ],
    components: {
      securitySchemes: {
        bearerAuth: {
          type: "http",
          scheme: "bearer",
          bearerFormat: "JWT",
        },
      },
    },
    security: [
      {
        bearerAuth: [],
      },
    ],
  },
  apis: ["./Routers/admin/login.js",
        "./Routers/admin/CRUD Admin/add.js",
        "./Routers/admin/CRUD Admin/checker.js",
        "./Routers/admin/CRUD Admin/deleteadmin.js",
        "./Routers/admin/CRUD Admin/get.js",
        "./Routers/admin/profile.js"
  ],
};


const swaggerDocs = swaggerJSDoc(swaggerOptions);
app.use("/api-docs", swaggerUi.serve, swaggerUi.setup(swaggerDocs));




app.use((err, req, res, next) => {
    if (err instanceof SyntaxError && err.status === 400 && "body" in err) {
      return res.status(400).json({
        status: 400,
        message: "Invalid JSON format",
        error: err.message,
      });
    }
    next(err);
  });



// Routers
import admin from "./Routers/admin/index.js"



admin.forEach(item=>app.use(`/admin/${item.path}`, item.component))
dotenv.config();
const PORT = process.env.PORT || 3000;

let host = '192.168.199.9' || '192.168.20.102';
const server = http.createServer(app)
server.listen(PORT,  ()=>console.log(`Server is running:  ${host}:${process.env.PORT}` ));