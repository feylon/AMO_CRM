<template>
<div>
    <div class="flex flex-wrap gap-5 justify-start">

  <div v-for="(i,j) in 10" class="w-[320px]  p-1 ps-3 pe-3 rounded-md bg-slate-950 ">
    <span class="text-white uniquifier font-bold text-[15px] mb-[-30px]">O'tib ketgan dedlaynlar</span>
    <div class=" pt-3 w-full flex">
        <div>
            <progress1 :tasksDone="115" :totalTasks="200" />

        </div>
        <div></div>
    </div>


  </div>
  
</div>
</div>
</template>

<script setup>
import {ref} from "vue";
import progress1 from "../components/Circular progress.vue";

const percentage = ref(90);

</script>

<style  scoped>
@import url('https://fonts.googleapis.com/css2?family=Dosis:wght@200..800&display=swap');



.dosis-<uniquifier> {
  font-family: "Dosis", sans-serif;
  font-optical-sizing: auto;
  font-weight: <weight>;
  font-style: normal;
}


</style>