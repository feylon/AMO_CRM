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
          :class = "color"
          :stroke-dasharray="percentage + ', 100'"
          d="M18 2.0845
            a 15.9155 15.9155 0 0 1 0 31.831
            a 15.9155 15.9155 0 0 1 0 -31.831"
        />
        <text x="18" y="20.35" class="percentage">
        

    <n-number-animation
      ref="numberAnimationInstRef"
      :from="0"
      show-separator

      :to="tasksDone"
      :active="true"
      :precision="0"
    />/{{ totalTasks }}
  
        </text>
        <text x="18" y="25.5" class="label1 text-white">{{percentage.toFixed(1)}} %</text>
        <text x="18" y="29.5" class="label text-white">Bajarildi</text>

      </svg>
    </div>
  </template>
  
  <script setup>
  import { computed, toRefs, ref } from 'vue'
  
  const  color = ref('');
  const numberAnimationInstRef = ref(null);
  
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
  
  const { tasksDone, totalTasks } = toRefs(props);
  const percentage = computed(() => (tasksDone.value / totalTasks.value) * 100);
if (percentage.value >= 0 && percentage.value < 20) color.value = "danger"; 
if (percentage.value >= 20 && percentage.value < 60) color.value = "yellow"; 
if (percentage.value >= 60 && percentage.value < 80) color.value = "blue"; 
if (percentage.value >= 80 && percentage.value <= 100) color.value = "green"; 



const timer = setTimeout(() => {
  
  numberAnimationInstRef.value?.play();
const numberAnimationInstRef = ref(null); 
}, 500);
clearTimeout(timer)
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
  
  .blue{

    stroke: #0c88c2;
  }



  .danger{
    stroke: #eb400c;

  }

.yellow {
  stroke: #8ea705;

}

.green{
  stroke: #099447;
  
}

  .circle {
    fill: none;
    stroke-width: 2.8;
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
    font-size: 0.2em;
    text-anchor: middle;
  }

  .label1 {
    fill: #e0d8d8;
    font-size: 0.2em;
    text-anchor: middle;
  }
  
  @keyframes progress {
    0% {
      stroke-dasharray: 0 100;
    }
  }
  </style>
  