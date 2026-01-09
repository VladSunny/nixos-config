{
  isNvidia ? false,
  ...
}:
{
  imports = [
    ./packages.nix
    ./fish.nix
    ./modules/bundle.nix
  ];

  home = {
    username = "vladg00dman";
    homeDirectory = "/home/vladg00dman";
    stateVersion = "25.11";
  };
}
