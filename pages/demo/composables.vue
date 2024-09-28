<template>
  <div>
    <p>Ping: {{ ping.ping() }}</p>
    <p>Pong: {{ ping.pong() }}</p>
  </div>
</template>

<script setup lang="ts">
const ping = usePingpong();
</script>

<style scoped></style>
