<template>
  <div>
    <h1>Component Test</h1>
    <hr />
    <DemoComponentOne title="First title of component" />
    <hr />
    <DemoComponentTwo :author="author" />
  </div>
</template>

<script setup lang="ts">
import type { IAuthor } from "~/types/author.type";
// type Apple =
//   | "Iphone 6"
//   | "Iphone 7"
//   | "Iphone 12"
//   | "Iphone 13"
//   | "Iphone 14"
//   | "Iphone 15"
//   | "Iphone 16";

// interface PhoneModel {
//   brand: string;
//   model: string;
//   year: number;
//   type: Apple;
// }

const author = reactive<IAuthor>({
  firstName: "Cheng",
  lastName: "Xng",
  email: "cheng@gmail.com",
  date: new Date(),
});
</script>

<style scoped></style>
