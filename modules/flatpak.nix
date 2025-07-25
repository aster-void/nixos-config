{
  inputs,
  lib,
  config,
  ...
}: let
  cfg = config.my.apps;
in {
  options.my.apps.games.enable = lib.mkEnableOption "Enable flatpak-installed games";

  imports = [inputs.nix-flatpak.nixosModules.nix-flatpak];
  config = {
    assertions = [
      {
        assertion = config.xdg.portal.enable;
        message = "To use Flatpak you must enable XDG Desktop Portals with xdg.portal.enable.";
      }
    ];

    services.flatpak = {
      enable = true;
      uninstallUnmanaged = true;
      remotes = [
        {
          name = "flathub";
          location = "https://flathub.org/repo/flathub.flatpakrepo";
        }
        {
          name = "launcher.moe";
          location = "https://gol.launcher.moe/gol.launcher.moe.flatpakrepo";
        }
      ];
      packages =
        [
          # { appId = "com.brave.Browser"; origin = "flathub"; }
          "us.zoom.Zoom"
          "org.gnome.Platform//45"
        ]
        ++ lib.lists.optionals cfg.games.enable
        [
          # {
          #   appId = "moe.launcher.the-honkers-railway-launcher";
          #   origin = "launcher.moe";
          # }
          # {
          #   appId = "moe.launcher.sleepy-launcher";
          #   origin = "launcher.moe";
          # }
          {
            appId = "io.mrarm.mcpelauncher";
            origin = "flathub";
          }
        ];
    };
  };
}
