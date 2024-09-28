<template>
  <div>
    <a-button @click="handleMessage"> button </a-button>
  </div>
</template>

<script setup lang="ts">
const handleMessage = () => {
  message.info("This is a normal message");
};
</script>

<style scoped></style>
