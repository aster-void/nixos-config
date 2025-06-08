{shared, ...}: {
  programs.git = {
    enable = true;
    config = {
      inherit (shared.git-config) core init pull user;
      alias = shared.git-config.aliases;
    };
  };
}
