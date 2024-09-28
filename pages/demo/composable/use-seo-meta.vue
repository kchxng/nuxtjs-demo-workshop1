<template>
  <div>
    <h2>SEO Meta</h2>
  </div>
</template>

<script setup lang="ts">
// ** UseSEOMeta is same as useHead **
useSeoMeta({
  title: "My Amazing Site",
  ogTitle: "My Amazing Site",
  description: "This is my amazing site, let me tell you all about it.",
  ogDescription: "This is my amazing site, let me tell you all about it.",
  ogImage: "https://example.com/image.png",
  twitterCard: "summary_large_image",
});
</script>

<style scoped></style>
