import { createApp } from 'vue'
import './style.css'
import App from './App.vue'
import naive from 'naive-ui'
import router from "../Pages/index.js"
import { createPinia } from 'pinia'


import FontAwesomeIcon from "../fontsawesome"
const app = createApp(App);
const pinia = createPinia()

app.component('font-awesome-icon', FontAwesomeIcon)

app.use(router)
app.use(pinia)
app.use(naive);
app.mount('#app');
