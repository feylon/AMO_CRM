<template>
    <div class="w-full h-full border-[1px] border-gray-300 flex ">
        <n-card class="h-full w-max-[400px] overflow-auto w-[400px]" title="Sozlamalar">
            <div v-for="(i,j) in items" :key="j" class="w-full mt-1 rounded-md transition-all duration-150 border-b-[1px] text-slate-800 hover:bg-slate-800 cursor-pointer hover:text-white border-t-[1px] h-[40px] border-solid border-gray-200">
                <div  class="flex items-start justify-start ps-4 pt-2 h-full"> 
                    <span class="font-bold">{{i.title}}</span>
                </div>
            </div>
        </n-card>
        <component />
        
    </div>
</template>

<script setup>
import { ref } from 'vue';
import component from '../components/component.vue';
let itr = ref(0);

const items = ref([
    {
        title : "Umumiy sozlamalar"
    },
    {
        title : "Hisob va to'lov"
    },
    {title : "Subadminlar"},
    {title : "Chat va messenjerlar"}
])
</script>

<style lang="scss" scoped>

</style>