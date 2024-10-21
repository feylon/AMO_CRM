<template>
<n-card title="Xavfsizlik" class="shadow-md w-[600px]">
<form class="w-full flex gap-4 justify-around">
<div class="flex flex-col pt-3">
    <label for="login" class="font-bold  mb-9">Login</label>
    <label for="oldpass" class="font-bold mb-9">Eski parol</label>
    <label for="Newpass" class="font-bold mb-9">Yangi parol</label>
    <label for="NewpassConfirm" class="font-bold mb-9">Yangi parol (Qayta)</label>


</div>

<div class="flex flex-col ">
    <input type="text" id="login" class="block mb-3 w-full h-10 pl-8 pr-3 mt-1 text-sm text-gray-700 border focus:outline-none rounded shadow-sm focus:border-blue-500" placeholder="jamshid14092002"/>
    <input type="text" id="oldpass" class="block mb-3 w-full h-10 pl-8 pr-3 mt-1 text-sm text-gray-700 border focus:outline-none rounded shadow-sm focus:border-blue-500" placeholder="jamshid14092002"/>
    <input type="text" id="Newpass" class="block mb-3 w-full h-10 pl-8 pr-3 mt-1 text-sm text-gray-700 border focus:outline-none rounded shadow-sm focus:border-blue-500" placeholder="jamshid14092002"/>
    <input type="text" id="NewpassConfirm" class="block mb-3 w-full h-10 pl-8 pr-3 mt-1 text-sm text-gray-700 border focus:outline-none rounded shadow-sm focus:border-blue-500" placeholder="jamshid14092002"/>
    
</div>

</form>
<div class="w-full flex justify-end">
    <button 
					class="border border-slate-950 flex gap-1 items-center bg-slate-950 text-white rounded-md px-4 py-2 m-2 transition duration-500 ease select-none hover:bg-[#2b2638] focus:outline-none focus:shadow-outline">
				    <font-awesome-icon :icon="['fas', 'check']" />
	Saqlash
				</button>
</div>


        </n-card>
</template>

<script setup>

</script>

<style lang="scss" scoped>

</style>