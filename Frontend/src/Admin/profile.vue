<template>
    <div class="text-[24px] font-bold text-slate-950 select-none">
Profile     <font-awesome-icon :icon="['fas', 'user']" />

    </div>


<div class="w-[600px] ">
<div class="w-full flex gap-3 flex-wrap">
   
    <div  class="flex items-center gap-4">
    <label for="Familiya" class="block text-sm font-medium text-slate-950 dark:text-slate-950">Familiya</label>
    <div class="relative mt-1">
        <input type="email" id="Familiya" class="block w-full h-10 pl-8 pr-3 mt-1 text-sm text-gray-700 border focus:outline-none rounded shadow-sm focus:border-blue-500" placeholder="Ergashev"/>
        <span class="absolute inset-y-0 left-0 flex items-center justify-center text-slate-950 ml-2">
            <font-awesome-icon :icon="['fas', 'user']" />

        </span>
    </div>
</div>




<div  class="flex items-center gap-4">
    <label for="ismi" class="block text-sm font-medium text-slate-950 dark:text-slate-950">Ismi</label>
    <div class="relative mt-1">
        <input type="email" id="ismi" class="block w-full h-10 pl-8 pr-3 mt-1 text-sm text-gray-700 border focus:outline-none rounded shadow-sm focus:border-blue-500" placeholder=" Jamshid"/>
        <span class="absolute inset-y-0 left-0 flex items-center justify-center text-slate-950 ml-2">
            <font-awesome-icon :icon="['fas', 'user']" />

        </span>
    </div>
</div>





<div  class="flex items-center gap-4">
    <label for="ismi" class="block text-sm font-medium text-slate-950 dark:text-slate-950">Tug'ilgan vaqti</label>
    <div class="relative mt-1">
        <n-date-picker v-model:value="brith" type="date" />

        <span class="absolute inset-y-0 left-0 flex items-center justify-center text-slate-950 ml-2">
            
        </span>
    </div>
</div>


</div>
</div>    
</template>

<script setup>
import {ref} from "vue";
const brith = ref(1183135260000)
</script>

<style lang="scss" scoped>

</style>