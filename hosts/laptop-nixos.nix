{
  imports = [
    "/etc/nixos/hardware-configuration.nix"
    ../nixos/common.nix
    ../graphic/Intel.nix.nix
  ];

  networking.hostName = "laptop-nixos";
}
