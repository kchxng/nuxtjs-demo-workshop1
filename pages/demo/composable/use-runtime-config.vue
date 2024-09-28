<template>
  <div>
    <h1>Use Config Runtime</h1>
    <p>public: {{ config.public }}</p>
    <p>Secre: {{ config.secretEnv }}</p>
  </div>
</template>

<script setup lang="ts">
const config = useRuntimeConfig();
// read env from api or server
await useFetch("/api/secret-env");
</script>

<style scoped></style>
