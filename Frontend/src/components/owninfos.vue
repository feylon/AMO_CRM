<template>



<div class=" p-4">
<div class="w-full flex gap-3 justify-between flex-wrap">
   
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
<div class="w-[130px]">
    <n-date-picker v-model:value="brith" type="date" />

</div>
        <span class="absolute inset-y-0 left-0 flex items-center justify-center text-slate-950 ml-2">
            
        </span>
    </div>
</div>



<div  class="flex items-center gap-4">
    <label for="ismi" class="block text-sm font-medium text-slate-950 dark:text-slate-950">TelegramID</label>
    <div class="relative mt-1">
        <input type="number" id="ismi" class="block w-full h-10 pl-8 pr-3 mt-1 text-sm text-gray-700 border focus:outline-none rounded shadow-sm focus:border-blue-500" placeholder="6662172747 "/>
        <span class="absolute inset-y-0 left-0 flex items-center justify-center text-slate-950 ml-2">
            <font-awesome-icon class="text-[16px]" :icon="['fab', 'telegram']" />

        </span>
    </div>
</div>


<div  class="flex items-center gap-4">
    <label for="ismi" class="block text-sm font-medium text-slate-950 dark:text-slate-950">Viloyat</label>
    <div class="relative mt-1">
<div class="w-[190px]">
    <n-select v-model:value="value" size="medium" :options="options" />

</div>
        <span class="absolute inset-y-0 left-0 flex items-center justify-center text-slate-950 ml-2">

        </span>
    </div>
</div>


<div  class="flex items-center gap-4">
    <label for="ismi" class="block text-sm font-medium text-slate-950 dark:text-slate-950">Tuman</label>
    <div class="relative mt-1">
<div class="w-[190px]">
    <n-select v-model:value="value" size="medium" :options="options" />

</div>
        <span class="absolute inset-y-0 left-0 flex items-center justify-center text-slate-950 ml-2">

        </span>
    </div>
</div>

</div>


<div class="w-full  mt-3 flex justify-end ">
    <button
					class="border border-slate-950 flex gap-1 items-center bg-slate-950 text-white rounded-md px-4 py-2 m-2 transition duration-500 ease select-none hover:bg-[#2b2638] focus:outline-none focus:shadow-outline">
				    <font-awesome-icon :icon="['fas', 'floppy-disk']" />
	Saqlash
				</button>
</div>

</div>    
</template>

<script setup>
import {ref} from "vue";
const brith = ref(1095098400);
const options = ref(
 [
        {
          label: "Everybody's Got Something to Hide Except Me and My Monkey",
          value: "song0",
          disabled: true
        },
        {
          label: "Drive My Car",
          value: "song1"
        },
        {
          label: "Norwegian Wood",
          value: "song2"
        },
        {
          label: "You Won't See",
          value: "song3",
          disabled: true
        },
        {
          label: "Nowhere Man",
          value: "song4"
        },
        {
          label: "Think For Yourself",
          value: "song5"
        },
        {
          label: "The Word",
          value: "song6"
        },
        {
          label: "Michelle",
          value: "song7",
          disabled: true
        },
        {
          label: "What goes on",
          value: "song8"
        },
        {
          label: "Girl",
          value: "song9"
        },
        {
          label: "I'm looking through you",
          value: "song10"
        },
        {
          label: "In My Life",
          value: "song11"
        },
        {
          label: "Wait",
          value: "song12"
        }
      ]);
const  value = ref(null);

</script>

<style lang="scss" scoped>

</style>