export const usePingpong = () => {
  //   return useState("ping", () => "pong");
  return {
    ping: () => "pong",
    pong: () => "ping",
  };
};
