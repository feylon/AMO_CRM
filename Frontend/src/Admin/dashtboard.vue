<template>
    <div class="flex   w-max-[100px]">
        <div class="min-h-[100vh]  h-[100%]  pt-10 w-[60px] bg-[#06121b]">
            
            <div class="select-none flex flex-col gap-3 overflow-hidden max-h-full">
                <div v-for="i in 4" class="flex flex-col w-[60px]">
                <div class="items-center rounded-md cursor-pointer transition-all  flex-col flex justify-center w-full h-[80px] bg-[#41505c] hover:bg-[#637788]">
<img class="w-[50px] h-[50px] " src="../../public/[removal.ai]_8a14b6f8-3e24-4bba-ab85-4f830bae2b28-avatar-user-profile-male-logo-profile-icon.png" alt="profile">
    <div class="text-[11px] mt-1     text-white">Akkount</div>
</div>
            </div>
            
            </div>

            
      
      
        </div>

        
        
        
        
        
        <div class="w-full  min-h-[100vh]">
            <div class="w-full border-b-[3px] border-[#1c3b55] p-3 h-[40px]  bg-[#16354e]  text-[13px]">
            </div>
            <div class="h-[calc(100vh-60px)] p-3 overflow-y-auto scroll">
                <font-awesome-icon :icon="['fas', 'magnifying-glass']" /><font-awesome-icon :icon="['fas', 'bell']" />
               
            </div>
        </div>

    </div>
</template>

<script setup>

</script>

<style scoped>
::-webkit-scrollbar {
    width: 10px;
}

.scroll {
    scroll-behavior: inherit;

}

::-webkit-scrollbar-track {
    box-shadow: inset 0 0 5px grey;
    border-radius: 2px;
}

::-webkit-scrollbar-thumb {
    background: #16354e;
    border-radius: 10px;
}

::-webkit-scrollbar-thumb:hover {
    background: #16354e;
}
</style>