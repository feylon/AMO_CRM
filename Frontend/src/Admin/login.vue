<template>
    <div
      class=" overflow-hidden container bg-blue-600 flex justify-center items-center w-min-[100px] min-h-[100vh] min-w-[100vw]">
      <div class="bg-white flex p-3 w-[800px] h-[500px] rounded-se-[70px] rounded-es-[70px]">
        <div class="w-1/2 flex items-center justify-center">
          <form @submit.prevent="submit">
            <div class="flex-col items-center flex font-size justify-center">
              <div style='font-family: "Edu AU VIC WA NT Dots", cursive;font-optical-sizing: auto;font-weight: 800;font-style: normal;user-select: none;' class=" ">
                Tizimga kirish
              </div>
  
  
              <div class="bg-white p-4 rounded-lg">
                <div class="relative bg-inherit">
                  <input v-model="login" type="text" id="username" name="username"
                    class="peer bg-transparent h-10 w-72 rounded-lg text-sky-600 placeholder-transparent ring-2 px-2 ring-gray-500 focus:ring-sky-600 focus:outline-none focus:border-rose-600"
                    placeholder="Login" /><label for="username"
                    class="absolute cursor-text left-0 -top-3 text-sm text-gray-500 bg-inherit mx-1 px-1 peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-500 peer-placeholder-shown:top-2 peer-focus:-top-3 peer-focus:text-sky-600 peer-focus:text-sm transition-all">Login</label>
                </div>
  
                <div class="relative mt-5 bg-inherit">
                  <input v-model="password" type="password" id="password" name="username"
                    class="peer bg-transparent h-10 w-72 rounded-lg text-sky-600 placeholder-transparent ring-2 px-2 ring-gray-500 focus:ring-sky-600 focus:outline-none focus:border-rose-600"
                    placeholder="Parol" /><label for="password"
                    class="absolute cursor-text left-0 -top-3 text-sm text-gray-500 bg-inherit mx-1 px-1 peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-500 peer-placeholder-shown:top-2 peer-focus:-top-3 peer-focus:text-sky-600 peer-focus:text-sm transition-all">Parol</label>
                </div>
              </div>
  
              <div class="w-[100%] font-bold text-sky-500 text-right text-[11px] cursor-pointer me-6">
                Parolni unitdingizmi ?
              </div>
  
              <button type="submit" :disabled="loading ? true : false"
                :class="loading ? 'animate-bounce opacity-55':''"
                class="mt-2 w-10/12 rounded-md  text-[14px] text-white hover:bg-sky-700 transition-all bg-sky-600 h-[35px]">
  
                <font-awesome-icon v-if="!loading" class="text-[16px]" :icon="['fas', 'arrow-right-to-bracket']" />
                <font-awesome-icon v-else class="text-[16px] animate-spin" :icon="['fas', 'arrows-rotate']" />
              </button>
  
            </div>
          </form>
        </div>
        <div class="w-1/2 h-full flex justify-center items-center">
          <img src="/shutterstock_1840496317.jpg" class="w-full select-none" alt="">
        </div>
      </div>
  
  
    </div>
  </template>
  <script setup>
  import { ref } from "vue";
  import { url } from "../../url";
  const login = ref('');
  const password = ref('');
  const loading = ref(false);
  
  const submit = async function () {
  
    try {
      if(login.value.length < 3 || password.value < 3) {alert("Formani to'ldiring"); return;}
    loading.value = true;
    console.log(login.value, password.value);
    let backend = await fetch(`${url}admin/login`, {
      method: "POST",
      headers: {
        'Content-Type': 'application/json'
  
      },
      body: JSON.stringify({
        login: login.value,
        password: password.value
      })
    })
    console.log(backend.status)
    if (backend.status == 200) {
      backend = await backend.json();
      loading.value = false;
      console.log(backend);
      return;
    }
    if(backend.status == 401){
      loading.value = false;
      login.value = '';
      password.value = '';
      alert("Parol yoki login xato");
  
  }  } catch (error) {
      
    }
    }
  
  </script>
  <style>
  .login {
    font-family: "Edu AU VIC WA NT Dots", cursive;font-optical-sizing: auto;font-weight: 800;font-style: normal;user-select: none;
  }
  </style>
  