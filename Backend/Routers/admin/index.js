import login from "./login.js";
import profile from "./profile.js"
import addAdmin from "./CRUD Admin/add.js"
import hasadmin from "./CRUD Admin/checker.js"
import deleteadmin from "./CRUD Admin/deleteadmin.js"
import getadmin from "./CRUD Admin/get.js"

export default [

    {path : "login", component : login},
    {path : "profile", component : profile},
    {path : "addadmin", component : addAdmin},
    {path : "hasadmin", component : hasadmin},
    {path : "deleteadmin", component : deleteadmin},
    {path : "getadmin", component : getadmin}
]