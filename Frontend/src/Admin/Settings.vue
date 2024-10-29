<template>
    <div class="w-full h-full border-[1px] border-gray-300 flex ">
        <n-card class="h-full w-max-[400px] max-w-[400px] w-min-[400px] overflow-auto w-[400px]" title="Sozlamalar">
            <router-link v-for="(i,j) in items" :to="i.to" :key="j">

                <div :class="fullName(1) ? 'bg-slate-800 text-white':''" class="w-full mt-1 rounded-md transition-all duration-150 border-b-[1px] text-slate-800 hover:bg-slate-800 cursor-pointer hover:text-white border-t-[1px] h-[40px] border-solid border-gray-200">
                <div   class="flex items-start justify-start ps-4 pt-2 h-full"> 
                    <span class="font-bold">{{i.title}}</span>
                </div>
            </div>
        </router-link>
        </n-card>


        <div class="w-full">
        <router-view>

</router-view>


</div>
</div>
</template>

<script setup>
import { ref, computed } from 'vue';
import {useRouter} from "vue-router"
import component from '../components/component.vue';
let itr = ref(0);
const router = useRouter();

const items = ref([
    {
        title : "Umumiy sozlamalar",
        to : "/settings/"
    },
    {
        title : "Hisob va to'lov",
        to : "/settings/payments"

    },
    {title : "Subadminlar",
     to : "/settings/admins"
    
    },
    {title : "Chat va messenjerlar",
    to : "/settings/chats"

    }
]);
(()=>{
    // let a;
//     console.log(window.location.href)
//     let a = window.location.href;
// a = window.location.href.split("/");
let a = window.location.href.split("/")[window.location.href.split("/").length - 1];
console.log(a)

})();
const fullName = computed(() => {
  console.log()
    return true;
});
</script>

<style lang="scss" scoped>

</style>