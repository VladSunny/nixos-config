{
  imports = [
    "/etc/nixos/hardware-configuration.nix"
    ../nixos/common.nix
    ../graphic/NVIDIA.nix
  ];

  networking.hostName = "laptop-nixos";
}
