import { createRouter, createWebHashHistory } from "vue-router";
import loginAdmin from "../src/Admin/login.vue";

const router = createRouter({
    history : createWebHashHistory(),
    routes : [
        {path : "/login", component : loginAdmin},
        {path : "/", component : ()=>import ("../src/admin/dashtboard.vue"), children :
            [
                {path : '/', component : ()=> import("../src/Admin/Home.vue")}
            ]
        }
    ]
});

export default router;