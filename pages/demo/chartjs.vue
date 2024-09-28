<template>
  <div>
    <h2>ChartJS (Line Chart)</h2>
    <LineChart
      ref="lineRef"
      :chartData="chartData"
      :options="options"
      class="h-[270px]"
    />
  </div>
</template>

<script setup lang="ts">
import { LineChart, useBarChart } from "vue-chart-3";

// Chart Data
const lineData = ref([30, 40, 60, 70, 5, 35, 12, 75, 42, 33, 10, 2]);
const options = ref({
  responsive: true,
  plugins: {
    legend: {
      position: "top",
      display: false,
    },
    title: {
      display: false,
      text: "Overview",
    },
  },
});
const chartData = computed(() => ({
  labels: [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ],
  datasets: [
    {
      data: lineData.value as any,
      backgroundColor: [
        "#7A306C",
        "#8E8DBE",
        "#A9E4EF",
        "#81F495",
        "#96F550",
        "#EF476F",
        "#FFD166",
        "#06D6A0",
        "#118AB2",
        "#073B4C",
        "#0B132B",
        "#96F550",
      ],
    },
  ],
}));

const { barChartProps, barChartRef } = useBarChart({ chartData });
</script>

<style scoped></style>
