<template>
    <div class="p-3">

        <div class="text-[20px] font-bold">
            Chat va messenjerlar
        </div>
        <div
            class="w-full justify-between pe-4 h-[80px] mt-3 rounded-md shadow-xl shadow-[#ffffff11] border-solid  border-[1px] flex items-center">
            <div class="font-bold ms-4">Telegram BOT</div>
            <div class="flex gap-2">
                <button
                    class="border border-slate-950 flex gap-1 items-center bg-slate-950 text-white rounded-md px-3 py-2 m-2 transition duration-500 ease select-none hover:bg-[#2b2638] focus:outline-none focus:shadow-outline">
                    <font-awesome-icon :icon="['fas', 'pen']" class="text-[10px]" />

                </button>


                <button
                    class="border border-slate-950 flex gap-1 items-center bg-slate-950 text-white rounded-md px-3 py-2 m-2 transition duration-500 ease select-none hover:bg-[#2b2638] focus:outline-none focus:shadow-outline">
                    <font-awesome-icon :icon="['fas', 'pause']" />
                </button>






                <button
                    class="border border-slate-950 flex gap-1 items-center bg-slate-950 text-white rounded-md px-3 py-2 m-2 transition duration-500 ease select-none hover:bg-red-600 hover:border-red-600  focus:outline-none focus:shadow-outline">
                    <font-awesome-icon :icon="['fas', 'trash']" />
                </button>
            </div>
        </div>
        <div class="ms-2 mt-3 text-[18px] font-bold">
            Avto-javoblar
        </div>
    </div>
</template>

<script setup>

</script>

<style lang="scss" scoped></style>