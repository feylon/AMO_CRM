import { createRouter, createWebHashHistory } from "vue-router";
import loginAdmin from "../src/Admin/login.vue";
import nofound404 from "../src/components/404.vue"

const router = createRouter({
    history : createWebHashHistory(),
    routes : [
        {path : "/login", component : loginAdmin},
        {
            path: '/:catchAll(.*)', // This matches any route
            name: 'NotFound',
            component: nofound404
          },
        {path : "/", component : ()=>import ("../src/admin/dashtboard.vue"), children :
            [
                {path : '/', component : ()=> import("../src/Admin/Home.vue")},
                {path : '/profile', component : ()=> import("../src/Admin/profile.vue")},
                {path : '/settings', component : ()=>import("../src/Admin/Settings.vue"),
                    children : [
                        {path:"/settings/admins", component:()=>import("../src/components/component.vue")},
                        {path:"/settings/chats", component:()=>import("../src/components/settingschats.vue")},
                        {path:"/settings/", component:()=>import("../src/components/Allsettings.vue")},
                        {path:"/settings/payments", component:()=>import("../src/components/payments.vue")},

                               ]
                }
            ]
        }
    ]
});

export default router;