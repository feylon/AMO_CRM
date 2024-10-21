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
        <n-card title="Kirish tarixi">
            <n-table striped :bordered="false" :single-line="false">
    <thead>
      <tr>
        <th>IP</th>
        <th>Status</th>
        <th>Vaqti</th>
        </tr>
    </thead>
    <tbody>
      <tr v-for="i in 8">
        <td>{{Math.trunc(Math.random() * 192)}}.{{Math.trunc(Math.random() * 192)}}.{{Math.trunc(Math.random() * 2)}}.{{Math.trunc(Math.random() * 2)}}</td>
        <td>
            <n-tag :type="Math.trunc(Math.random() * 2) == 1 ?'success' : 'error'">
      OK {{ Math.trunc(Math.random() * 2) }}
    </n-tag>
        </td>
      <td>{{getRandomDate()}}</td>
    </tr>
      
    </tbody>
  </n-table>
<div class="flex justify-center w-full mt-4">
    <n-pagination v-model:page="page" :page-count="100" />

</div>
        </n-card>
    </div>
</div>
</template>

<script setup>
import {ref} from "vue";
import owninfos from "../components/owninfos.vue";
import profileSecurity from "../components/profileSecurity.vue";
const page = ref(3)
let getRandomDate = function (startDate, endDate) {
  startDate = '2020-01-01'; 
  endDate = '2024-12-31';
  
  const start = new Date(startDate).getTime();
  const end = new Date(endDate).getTime();
  const randomTime = new Date(start + Math.random() * (end - start));
  
  // Formatting the date as 'DD.MM.YYYY HH:MM:SS'
  const day = String(randomTime.getDate()).padStart(2, '0');
  const month = String(randomTime.getMonth() + 1).padStart(2, '0'); // Months are 0-indexed
  const year = randomTime.getFullYear();
  
  const hours = String(randomTime.getHours()).padStart(2, '0');
  const minutes = String(randomTime.getMinutes()).padStart(2, '0');
  const seconds = String(randomTime.getSeconds()).padStart(2, '0');
  
  return `${day}.${month}.${year} ${hours}:${minutes}:${seconds}`;
}

// Usage
let date1 = getRandomDate();
console.log(date1);

</script>

<style  scoped>

</style>