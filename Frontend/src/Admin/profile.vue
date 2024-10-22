<template>
    <div class="text-[24px] font-bold text-slate-950 select-none">
Profile     

    </div>
<div class="flex flex-wrap owninfos w-full sm:flex-col lg:flex-row md:flex-col gap-3 justify-start">
    <div class="  lg:max-w-[49%] sm:w-full md:w-full">
        <n-card title="Shaxsiy ma'lumotlar" class="shadow-md">
    
    <owninfos/>
</n-card >
    </div>
    <div  class="lg:max-w-[49%] sm:w-full md:w-full">
        <profileSecurity/>
    </div>


    <div  class="lg:max-w-[49%] sm:w-full md:w-full">
      <loginhistory/>
    </div>
</div>
</template>

<script setup>
import {ref} from "vue";
import owninfos from "../components/owninfos.vue";
import profileSecurity from "../components/profileSecurity.vue";
import loginhistory from "../components/loginhistory.vue";
</script>

<style  scoped>

</style>