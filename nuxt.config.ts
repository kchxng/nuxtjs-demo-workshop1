// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: "2024-04-03",
  css: ["~/assets/css/mycss.css"],
  devtools: { enabled: true },
  modules: [
    "dayjs-nuxt",
    "@nuxt/image",
    "@nuxtjs/tailwindcss",
    "@ant-design-vue/nuxt",
    "@pinia/nuxt",
  ],
  pinia: {
    storesDirs: ["./stores/**", "./custom-folder/stores/**"],
  },
  antd: {},
  // dayjs: {
  //   locales: ["en", "fr"],
  //   plugins: ["relativeTime", "utc", "timezone"],
  //   defaultLocale: "en",
  //   defaultTimezone: "Asia/Bangkok",
  // },
  runtimeConfig: {
    secretEnv: process.env.SECRET_ENV,
    public: {
      publicEnv: process.env.PUBLIC_ENV,
    },
  },
});
