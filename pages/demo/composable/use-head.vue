<template>
  <div>
    <h1>Use Head</h1>
  </div>
</template>

<script setup lang="ts">
// ******* SEO Settings
useHead({
  title: "Nuxt Head Title",
  meta: [
    { name: "Description", content: "Nuxt Head Description" },
    { name: "og:Description", content: "Nuxt Head Description" },
  ],
  link: [{ rel: "comercial", href: "https://www.w3schools.com" }],
  script: [
    {
      src: "https://example.com/script.js",
      async: true,
    },
  ],
});
</script>

<style scoped></style>
