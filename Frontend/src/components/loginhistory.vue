<template>
    <n-card title="Kirish tarixi">
            <n-table striped :bordered="false" :single-line="false">
    <thead>
      <tr>
        <th><div class="text-center">IP</div></th>
        <th><div class="text-center">Status</div></th>
        <th><div class="text-center">Vaqti</div></th>
        </tr>
    </thead>
    <tbody>
      <tr  v-for="i in 8">
        <td class=" text-center">{{Math.trunc(Math.random() * 192)}}.{{Math.trunc(Math.random() * 192)}}.{{Math.trunc(Math.random() * 2)}}.{{Math.trunc(Math.random() * 2)}}</td>
        <td class="text-center">
            <n-tag v-if="Math.trunc(Math.random() * 2) == 1" type = 'success' >
      OK 
    </n-tag>
    <n-tag v-else type='error' >
      Error 
    </n-tag>
        </td>
      <td class="text-center">{{getRandomDate()}}</td>
    </tr>
      
    </tbody>
  </n-table>
<div class="flex justify-center w-full mt-4">
    <n-pagination v-model:page="page" :page-count="100" />
  </div>
</n-card>

</template>

<script setup>
import { ref } from 'vue';



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



</script>

<style lang="scss" scoped>

</style>