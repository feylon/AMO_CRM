<template>
    <Chart
       class="bg-[0b0d18] inline-block p-5"
      :size="{ width: 900, height: 420 }"
      :data="data"
      :margin="margin"
      :direction="direction"
      :axis="axis"
    >
      <template #layers>
        <Grid strokeDasharray="2,2" />
        <Area :dataKeys="['name', 'pl']" type="monotone" :areaStyle="{ fill: 'url(#grad)' }" />
        <Line
          :dataKeys="['name', 'pl']"
          type="monotone"
          :lineStyle="{
            stroke: '#9f7aea'
          }"
        />
        <Marker v-if="marker" :value="1000" label="Faoliyat." color="#020617" :strokeWidth="2" strokeDasharray="6 6" />
        <defs>
          <linearGradient id="grad" gradientTransform="rotate(190)">
            <stop offset="0%" stop-color="#be90ff" stop-opacity="1" />
            <stop offset="100%" stop-color="#020617" stop-opacity="0.8" />
          </linearGradient>
        </defs>
      </template>
  
      <template #widgets>
        <Tooltip
          borderColor="#48CAE4"
          :config="{
            pl: { color: '#9f7aea' },
            avg: { hide: true },
            inc: { hide: true }
          }"
        />
      </template>
    </Chart>
  </template>
  
  <script setup>
  import { ref } from 'vue'
  import { Chart, Grid, Line, Area, Marker, Tooltip } from 'vue3-charts'
  
  const data = ref(
    [
  { "name": "a1", "pl": 2322, "avg": 142, "inc": 122 },
  { "name": "a2", "pl": 3407, "avg": 968, "inc": 560 },
  { "name": "a3", "pl": 755, "avg": 1369, "inc": 241 },
  { "name": "a4", "pl": 322, "avg": 1126, "inc": 310 },
  { "name": "a5", "pl": 998, "avg": 732, "inc": 499 },
  { "name": "a6", "pl": 3368, "avg": 1370, "inc": 633 },
  { "name": "a7", "pl": 3961, "avg": 1109, "inc": 784 },
  { "name": "b1", "pl": 986, "avg": 247, "inc": 502 },
  { "name": "b2", "pl": 1611, "avg": 897, "inc": 266 },
  { "name": "b3", "pl": 3383, "avg": 377, "inc": 674 },
  { "name": "b4", "pl": 900, "avg": 376, "inc": 647 },
  { "name": "b5", "pl": 3196, "avg": 1114, "inc": 675 },
  { "name": "b6", "pl": 845, "avg": 1178, "inc": 764 },
  { "name": "b7", "pl": 1170, "avg": 669, "inc": 716 },
  { "name": "c1", "pl": 3169, "avg": 1334, "inc": 731 },
  { "name": "c2", "pl": 293, "avg": 1345, "inc": 387 },
  { "name": "c3", "pl": 927, "avg": 933, "inc": 472 },
  { "name": "c4", "pl": 868, "avg": 506, "inc": 370 },
  { "name": "c5", "pl": 3449, "avg": 847, "inc": 760 },
  { "name": "c6", "pl": 3346, "avg": 481, "inc": 244 },
  { "name": "c7", "pl": 461, "avg": 645, "inc": 582 },
  { "name": "d1", "pl": 2548, "avg": 188, "inc": 146 },
  { "name": "d2", "pl": 1193, "avg": 1067, "inc": 282 },
  { "name": "d3", "pl": 600, "avg": 83, "inc": 686 },
  { "name": "d4", "pl": 1578, "avg": 491, "inc": 258 }
]

)
  const direction = ref('horizontal')
  const margin = ref({
    left: 0,
    top: 20,
    right: 20,
    bottom: 0
  })
  
  const axis = ref({
    primary: {
      type: 'band'
    },
    secondary: {
      domain: ['dataMin', 'dataMax + 100'],
      type: 'linear',
      ticks: 8
  }})
  
  const marker = ref(true)
  </script>
  