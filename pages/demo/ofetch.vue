<template>
  <div>
    <!-- <ul>
    </ul> -->
    <h2 v-if="pending">Loading....</h2>
    <h2 v-else>Fetch success</h2>
  </div>
</template>

<script setup lang="ts">
const { data, pending, error } = await useFetch(
  `https://jsonplaceholder.typicode.com/todos`,
  {}
);

// const {}=await useFetch(`https://jsonplaceholder.typicode.com/todos`,{
//     method: 'GET',
//     body:{
//         "userId":""
//     }
// })

console.log(data.value);
</script>

<style scoped></style>
