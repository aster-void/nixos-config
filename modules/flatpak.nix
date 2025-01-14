{
  config,
  inputs,
  ...
}: {
  imports = [inputs.nix-flatpak.nixosModules.nix-flatpak];

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
    ];
    packages = [
      # { appId = "com.brave.Browser"; origin = "flathub"; }
      "us.zoom.Zoom"
    ];
  };
}
