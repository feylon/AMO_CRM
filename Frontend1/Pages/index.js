import { createRouter, createWebHashHistory } from "vue-router";
import Dashtboard from "../src/Dashtboard.vue";
import login from "../src/login.vue"

const router = createRouter(
    {
        history : createWebHashHistory(),
        routes : [
            {component : Dashtboard, path : "/"},
            {component : login, path : "/login"}

        ]
    }
);

export default router;