{host, ...}: {
  networking = {
    hostName = "${host}"; # Define your hostname.

    nameservers = [
      # cloudflare
      "1.1.1.1"
      "1.0.0.1"
      # quad9
      "9.9.9.9"
      # google
      "8.8.8.8"
      "8.8.4.4"
    ];

    # Open ports in the firewall.
    # networking.firewall.allowedTCPPorts = [ ... ];
    # networking.firewall.allowedUDPPorts = [ ... ];
    # Or disable the firewall altogether.
    firewall.enable = true;

    # Configure network proxy if necessary
    # networking.proxy.default = "http://user:password@proxy:port/";
    # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

    # Enable networking
    # I switched back to networkmanager from WPA because nmtui was too good
    networkmanager.enable = true;
    # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  };
  services.avahi = {
    enable = true;
    # nssmdns = true;
    nssmdns4 = true;
    ipv4 = true;
    ipv6 = true;
    publish = {
      enable = true;
      workstation = true;
    };
  };
}
