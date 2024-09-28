<template>
  <div>
    <h3>Components One</h3>
    <p>1. {{ props.title }}</p>
    <p>2. {{ props.msg }}</p>
    <p>
      Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque voluptates
      quas officiis? Iusto libero nostrum, ad rem ut minima ipsum, est nisi,
      dolore cum voluptatem nulla illo quaerat expedita. Voluptatum?
    </p>
  </div>
</template>

<script setup lang="ts">
const props = defineProps({
  title: {
    type: String,
    required: true,
    default: "This is a first title for the component",
  },
  msg: {
    type: String,
    required: false,
    default: "This is a second msg for the component",
  },
});
</script>

<style scoped></style>
