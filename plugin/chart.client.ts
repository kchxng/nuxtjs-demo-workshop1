import { defineNuxtPlugin } from "#app";
import { Chart, registerables } from "chart.js";
import VueChart3 from "vue-chart-3";

// Register all Chart.js components
Chart.register(...registerables);

export default defineNuxtPlugin((nuxtApp) => {
  // Register VueChart3 as a global component
  nuxtApp.vueApp.component("VueChart3", VueChart3);

  // Make Chart.js available globally via $Chart
  nuxtApp.vueApp.config.globalProperties.$Chart = Chart;
});
