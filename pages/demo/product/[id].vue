<template>
  <div>
    <h2>Product Page</h2>
    <p>ID: {{ route.params.id }}</p>
    <h3>Query: Page={{ route.query.page }} && limit={{ route.query.limit }}</h3>
    <h3>Price: {{ formatNumber(10000) }}</h3>
    <h3>Random Arrage: {{ randomEntry(randomArr) }}</h3>
    <NuxtLink active-class="active" to="/demo/product/3?page=1&limit=20"
      >Product Demo</NuxtLink
    >
    <br />
    <button @click="goProduct2(2)">Go Product 2</button>
    <br />
    <NuxtLink to="/demo">Go Home</NuxtLink>
  </div>
</template>

<script setup lang="ts">
// Define for Customize Layout Page
definePageMeta({
  layout: "demo-product",
  middleware: "demo-product-middleware",
});

// ****************************************************************
const route = useRoute();
const router = useRouter();
const goProduct2 = (id: number) => {
  // way 1
  router.push(`/demo/product/${id}?page=2&limit=40`);
  // router.push({
  //   path: `/demo/product/${id}`,
  //   query: {
  //     page: 2,
  //     limit: 40,
  //   },
  // });
};

// *********************** Define ***************************************
const randomArr = [60, 70, 80, 90];
console.log("ID: " + JSON.stringify(route.params.id));
</script>

<style scoped>
.active {
  color: red;
}
</style>
