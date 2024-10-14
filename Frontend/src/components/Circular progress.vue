<template>
    <div class="circular-progress">
      <svg viewBox="0 0 36 36" class="circular-chart">
        <path
          class="circle-bg"
          d="M18 2.0845
            a 15.9155 15.9155 0 0 1 0 31.831
            a 15.9155 15.9155 0 0 1 0 -31.831"
        />
        <path
          class="circle"
          :stroke-dasharray="percentage + ', 100'"
          d="M18 2.0845
            a 15.9155 15.9155 0 0 1 0 31.831
            a 15.9155 15.9155 0 0 1 0 -31.831"
        />
        <text x="18" y="20.35" class="percentage">{{ tasksDone }}/{{ totalTasks }}</text>
        <text x="18" y="25.5" class="label text-white">Bajarildi</text>
      </svg>
    </div>
  </template>
  
  <script setup>
  import { computed, toRefs } from 'vue'
  
  const props = defineProps({
    tasksDone: {
      type: Number,
      required: true
    },
    totalTasks: {
      type: Number,
      required: true
    }
  })
  
  // Calculate the percentage of completion
  const { tasksDone, totalTasks } = toRefs(props);
  const percentage = computed(() => (tasksDone.value / totalTasks.value) * 100);
  </script>
  
  <style scoped>
  .circular-progress {
    width: 150px;
    height: 150px;
  }
  
  .circular-chart {
    display: block;
    margin: 10px auto;
    max-width: 100%;
    max-height: 250px;
  }
  
  .circle-bg {
    fill: none;
    stroke: #181717;
    stroke-width: 3.8;
  }
  
  .circle {
    fill: none;
    stroke-width: 2.8;
    stroke: #0c88c2;
    stroke-linecap: round;
    animation: progress 1s ease-out forwards;
  }
  
  .percentage {
    fill: #fdfdfd;
    font-size: 0.5em;
    text-anchor: middle;
  }
  
  .label {
    fill: #696767;
    font-size: 0.3em;
    text-anchor: middle;
  }
  
  @keyframes progress {
    0% {
      stroke-dasharray: 0 100;
    }
  }
  </style>
  