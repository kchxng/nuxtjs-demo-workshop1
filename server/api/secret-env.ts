export default defineEventHandler((e) => {
  const runtimeConfig = useRuntimeConfig(e);
  console.log("runtime: " + runtimeConfig.secretEnv);
  return {};
});
