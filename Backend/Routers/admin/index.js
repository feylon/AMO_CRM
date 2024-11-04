import login from "./login.js";
import profile from "./profile.js"
import addAdmin from "./CRUD Admin/add.js"
import hasadmin from "./CRUD Admin/checker.js"

export default [

    {path : "login", component : login},
    {path : "profile", component : profile},
    {path : "addadmin", component : addAdmin},
    {path : "hasadmin", component : hasadmin}
]