{
  pkgs,
  ...
}:
{
  nixpkgs.config = {
    allowUnfree = true;
  };

  imports = [
    ./packages.nix
    ./modules/bundle.nix
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  time.timeZone = "Europe/Moscow";

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

  system.stateVersion = "25.11";
}
