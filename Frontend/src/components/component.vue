<template>
  <div class="flex flex-col w-full">
    <div
      class="w-full ps-[61px] h-[40px] items-center border-b-[1px] flex border-gray-300 border-t-[0px] justify-between">
      <div>
        <div class="flex items-center">
          <input type="email" id="input-9"
            class="w-full h-10 px-3 text-sm text-gray-700 border border-r-0 rounded-r-none border-slate-850 focus:outline-none rounded shadow-sm"
            placeholder="Jamshid" />

          <button
            class="h-10 px-4 text-sm bg-slate-950 border border-l-0 border-slate-850 rounded-r shadow-sm text-blue-50 hover:text-white hover:bg-blue-400 hover:border-blue-400 focus:outline-none">
            <font-awesome-icon :icon="['fas', 'magnifying-glass']" />

          </button>
        </div>

      </div>

      <n-popover trigger="hover">
        <template #trigger>
          <button @click="showmodal = true"
            class="border border-slate-950 flex gap-1 items-center bg-slate-950 text-white rounded-md px-4 py-2 m-2 transition duration-500 ease select-none hover:bg-[#2b2638] focus:outline-none focus:shadow-outline">
            <!-- <font-awesome-icon :icon="['fas', 'floppy-disk']" /> -->
            +
          </button>
        </template>
        <span>
          Yangi subadminni qo'shish </span>
      </n-popover>

    </div>
    <n-table :bordered="false" :single-line="false">
      <thead class="">
         <tr>
          <th>№</th>
          <th>
            <div class="w-[85px] justify-center flex text-center">F.I</div>
          </th>
          <th class="justify-center flex">Login</th>
          <th>So'ngi faollik</th>
          <!-- <th></th> -->
          <th>Aktiv</th>
          <th>Info</th>
        </tr>
      </thead>
      <tbody>

        <tr v-for="(i, j) in data">
          <td>{{+ + j }}</td>
          <td>{{i.lastname}} {{i.firstname}} </td>
          <td> {{ i.login }}</td>
          <td>{{i.lastseen}}</td>
          <td>
            <n-switch v-model:value="i.active">
              <template #checked>
                <font-awesome-icon :icon="['fas', 'unlock']" />
                <span class="ms-1">Ochiq</span>
              </template>
              <template #unchecked>
                <font-awesome-icon :icon="['fas', 'lock']" />
                <span class="ms-1">Blok</span>
              </template>
            </n-switch>
          </td>
          <td class="flex justify-center">
            <button
              class="h-10 px-4 text-sm bg-slate-950 border border-l-0 border-slate-850 rounded shadow-sm text-blue-50 hover:text-white hover:bg-slate-800 hover:border-slate-800 focus:outline-none">
              <font-awesome-icon :icon="['fas', 'pen']" />

            </button>
          </td>

        </tr>

      </tbody>
    </n-table>
    <div class="w-full justify-center items-center gap-2 flex-col flex mt-3">
      <n-pagination v-model:page="page" @update:page="change" :page-count="page_count" />

      <div class="font-bold">Barcha ma'lumotlar <span class="text-green-600">{{ all }}</span> </div>
    </div>
  </div>

  <n-modal v-model:show="showmodal" class="custom-card" preset="card" :style="bodyStyle" title="Admin qo'shish"
    :bordered="false" size="huge" :segmented="segmented">
    <template #header-extra>

    </template>
    <div class="w-full flex gap-4 justify-evenly">
      <div class="w-[49%] flex gap-3">
        <div class="flex flex-col gap-4">
          <label class="font-bold">Familiyasi</label>
          <label class="font-bold mt-1">Ismi</label>
          <label class="font-bold mt-1">Tug'ilgan kuni</label>

        </div>

        <div class="flex flex-col gap-2">
          <n-input placeholder="Ergashev"></n-input>
          <n-input placeholder="Jamshid"></n-input>
          <div class="mt-3">
            <n-date-picker v-model:value="timestamp" type="date" />

          </div>


        </div>

      </div>
      <div class="w-[49%] flex gap-3">
        <div class="flex flex-col gap-4">
          <label class="font-bold">Aktivligi</label>
          <label class="font-bold mt-1">Login</label>
          <label class="font-bold mt-1">Parol</label>
          <label class="font-bold">Parol (Qayta)</label>
        </div>

        <div class="flex flex-col gap-2">
          <n-switch v-model:value="value">
            <template #checked>
              Aktiv
            </template>
            <template #unchecked>
              Aktiv emas
            </template>
          </n-switch>
          <div class="mt-1">
            <n-input placeholder="Login"></n-input>

          </div>
          <div class="mt-3"> <n-input type="password" show-password-on="mousedown" placeholder="Parol"
              :maxlength="25"></n-input>
          </div>
          <n-input type="password" show-password-on="mousedown" placeholder="Parol qayta" :maxlength="25"></n-input>

        </div>

      </div>

    </div>
    <template #footer>
      <div class="w-full flex justify-end">
        <button @click="showmodal = true"
          class="border border-slate-950 flex gap-1 items-center bg-slate-950 text-white rounded-md px-4 py-2 m-2 transition duration-500 ease select-none hover:bg-[#2b2638] focus:outline-none focus:shadow-outline">

          Qo'shish
        </button>
      </div>
    </template>
  </n-modal>
</template>

<script setup>
import { ref, onMounted } from 'vue';
import { url } from '../../url';

const page_count = ref(1)
const check = ref(false);
const page = ref(1);
const all = ref(0);
const data = ref([]);
let showmodal = ref(false);
let bodyStyle = {
  width: "600px"
};
let segmented = {
  content: "soft",
  footer: "soft"
};
let timestamp = ref(118313526e4)

let backend = async function (page) {
  const token = localStorage.token;
  let backend = await fetch(`${url}admin/getadmin?page=1&size=10`, {
    method: "GET",
    headers: {
      "Content-Type": "application/json",
      "Authorization": `Bearer ${token}`
    }
  });
  if (backend.status == 200) {
    data.value = ([]);
    backend = await backend.json();
     data.value = {...backend};
    all.value = backend[0].all;
    page_count.value = Math.trunc(backend[0].all / 10) + 1;
    console.log(data.value);

  }
}
onMounted(async () => {
  await backend(page.value);

});

function change(page) {
  console.log("Current page:", page);
}


</script>