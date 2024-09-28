<template>
  <div>
    <h1>Author Book</h1>
    <p>First Name: {{ props.author.firstName }}</p>
    <p>Last Name: {{ props.author.lastName }}</p>
    <p>Email: {{ props.author.email }}</p>
    <p>Date: {{ props.author.date }}</p>
  </div>
</template>

<script setup lang="ts">
import type { PropType } from "vue";
import { type IAuthor } from "../../types/author.type";
const props = defineProps({
  author: {
    type: Object as PropType<IAuthor>,
    required: true,
    default: "This is a author",
  },
});
</script>

<style scoped></style>
