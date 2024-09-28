<template>
  <div>
    <h2>Use Cookie</h2>
    <h3>Couter: {{ counterCookie || "-" }}</h3>
    <button @click="counterCookie = -1">Reset</button>
    <button @click="counterCookie--">-</button>
    <button @click="counterCookie++">+</button>
  </div>
</template>

<script setup lang="ts">
const counterCookie = useCookie<number>("counter");
counterCookie.value = counterCookie.value || Math.round(Math.random() * 1000);
console.log(counterCookie.value);
</script>

<style scoped></style>
