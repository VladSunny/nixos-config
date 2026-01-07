{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    "/etc/nixos/hardware-configuration.nix"
    ./packages.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  networking.hostName = "pc-nixos";

  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Moscow";

  services.xserver.enable = true;

  services.displayManager.ly.enable = true;
  services.displayManager.ly.settings = {
    animate = true;
    animation = "matrix";
  };

  services.printing.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  services.libinput.enable = true;

  programs.fish.enable = true;
  users.users.vladg00dman = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
    shell = pkgs.fish;
  };

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

  fonts.packages = with pkgs; [
    jetbrains-mono
  ];

  hardware.graphics.enable = true;

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    NIXOS_OZONE_WL = "1";
  };

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

  system.stateVersion = "25.11";
}
