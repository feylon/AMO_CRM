<template>
  <div class="flex   w-max-[100px]">
    <div class="min-h-[100vh]  h-[100%]  pt-10 w-[60px] bg-slate-950">

      <div class="select-none flex flex-col gap-3 overflow-hidden max-h-full">

        <router-link :to="i.url" v-for="(i, j) in router_links" class="flex flex-col w-[60px]" :key="j">
          <div
            class="items-center rounded-md cursor-pointer transition-all  flex-col flex justify-center w-full h-[80px] bg-[#41505c] hover:bg-[#637788]">
            <img class="w-[50px] h-[50px] " :src="i.pics" alt="profile">
            <div class="text-[11px] mt-1     text-white">{{ i.header }}</div>
          </div>
        </router-link>
      </div>




    </div>






    <div class="w-full  min-h-[100vh]">
      <div
        class="w-full border-b-[3px] border-slate-950  h-[40px]  bg-slate-950 flex items-center  justify-between text-[13px]">

        <div class="text-white">

          <n-breadcrumb>
            <n-breadcrumb-item v-for="i in 3" class="ps-1">
              <font-awesome-icon class="text-white" icon="fa-solid fa-house" />
              <span class="text-white ms-2">Home</span>
            </n-breadcrumb-item>

          </n-breadcrumb>
        </div>




        <div class="flex items-center gap-4">
          <span class="text-white mt-2">
            <n-badge value="10" :max="15">
              <font-awesome-icon class="text-[25px] cursor-pointer" :icon="['fas', 'bell']" />

            </n-badge>
          </span>
          <div
            class="border-s-[#06121b] hover:bg-[#06121b] border-solid  border-s-[1px]  h-full pe-[40px] cursor-pointer flex items-center  ps-[20px]">

            <n-dropdown trigger="hover" :options="options" @select="handleSelect">
              <div class="flex items-center justify-center">
                <div> <img src="/55dd738175b485fd26a010ac69bce4c7.png" class="w-[40px] rounded-[30%]" alt="">
                </div>

                <div class="flex flex-col justify-center ps-[10px]">
                  <span class="text-[white] text-center">{{Adminprofile.admin_lastname}} {{Adminprofile.admin_firstname}}</span>
                  <span class="text-[white] text-center text-[10px]">Admin</span>

                </div>
              </div>
            </n-dropdown>
          </div>

        </div>
      </div>


      <div class="h-[calc(100vh-60px)] p-3 overflow-y-auto scroll">
        <router-view>

        </router-view>

      </div>
    </div>

  </div>
</template>

<script setup>
import { NAvatar, NText, useMessage } from "naive-ui";
import { h, onMounted } from "vue";
import profile from "../components/profile.vue"
import { FontAwesomeIcon } from "@fortawesome/vue-fontawesome";
import { ref } from "vue";
import state from "../../state"
import { url } from "../../url";

let Adminprofile = ref({});
const message = useMessage();
const Admin = state();

onMounted( async () => {
  const token = localStorage.token;
    let data = await fetch(`${url}admin/profile`,{
      method : "GET",
      headers: {
        "Content-Type": "application/json",
        "Authorization": `Bearer ${token}` 
      }
    });
   if(data.status == 200)
    {data = await data.json();
      Adminprofile.value = {...data};
      
    }
    
    
});

function renderCustomHeader() {
  return h(
    "div",
    {
      style: "display: flex; align-items: center; padding: 8px 20px;"
    },
    [
      h(NAvatar, {
        round: true,
        style: "margin-right: 12px; ",
        src: "/55dd738175b485fd26a010ac69bce4c7.png"
      }),
      h("div", null, [
        h("div", { class: 'font-bold' }, null, [
          h(NText, { depth: 2 }, { default: () => `${Adminprofile.value.admin_lastname} ${Adminprofile.value.admin_firstname} ` })
        ]),
        h("div", { style: "font-size: 12px; text-align:center" }, [
          h(NText, { depth: 3 }, { default: () => "Admin" })
        ])
      ])
    ]
  );
}


let options = [
  {
    key: "header",
    type: "render",
    render: renderCustomHeader
  },
  {
    key: "header-divider",
    type: "divider"
  },
  {
    label: "lpsum1",
    key: "stmt1",
    type: "render",
    render: () =>
      h("div",
        {
          style: {
            transition: "background-color 0.3s",
          },
          class: "text-sky-600 cursor-pointer flex justify-start font-bold text-[11px] items-center ps-4 pt-1 pb-1 gap-3",
          onmouseover: (event) => {
            event.currentTarget.style.backgroundColor = "#f0f0f0";
          },
          onmouseout: (event) => {
            event.currentTarget.style.backgroundColor = "";
          },
          onclick: () => {
            message.success("Tugma bosildi!");
          }
        },
        [
          h("i", { class: "fas fa-house" }),
          h("span", "Admin")
        ]
      )


  }

]
function handleSelect(key) {
  message.info(String(key));
}



let router_links = ref([

  {
    url: "/",
    header: "Statistika",
    pics: "/statics.png"
  }, {
    url: "/",
    header: "Bitimlar",
    pics: "/Emoji_u1f4b2.svg.png"
  }, {
    url: "/",
    header: "Vazifalar",
    pics: "/listbox.png"
  }, {
    url: "/",
    header: "Xabarlar",
    pics: "/main.png"
  }, {
    url: "/settings/allsettings",
    header: "Sozlamalar",
    pics: "/Settings.png"
  }, {
    url: "/profile",
    header: "Profil",
    pics: "[removal.ai]_8a14b6f8-3e24-4bba-ab85-4f830bae2b28-avatar-user-profile-male-logo-profile-icon.png"
  }
]);
(() => {
  console.log(window.location.href.replace(`${window.location.origin}/#/`, ''))
})()
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