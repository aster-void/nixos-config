{pkgs, ...}: {
  environment.sessionVariables = rec {
    EDITOR = "hx";
    BROWSER = "zen-beta";

    # XDG_RUNTIME_DIR = "/run/user/1000";
    XDG_CACHE_HOME = "$HOME/.cache";
    XDG_CONFIG_HOME = "$HOME/.config";
    XDG_DATA_HOME = "$HOME/.local/share";
    XDG_STATE_HOME = "$HOME/.local/state";

    # Not officially in the specification
    XDG_BIN_HOME = "$HOME/.bin";
    PATH = [
      "${XDG_BIN_HOME}"
    ];

    PKG_CONFIG_PATH = "${pkgs.openssl.dev}/lib/pkgconfig";
  };
}
