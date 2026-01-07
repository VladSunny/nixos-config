{ config, pkgs, ... }:

{
  imports = [
    ./fish.nix
  ];

  home = {
    username = "vladg00dman";
    homeDirectory = "/home/vladg00dman";
    stateVersion = "25.11";
  };

  programs.kitty = {
    enable = true;
    settings = {
      background_opacity = 0.8;
      dynamic_background_opacity = "yes";
    };
  };

  programs.git = {
    enable = true;
    settings = {
      user.name = "VladSunny";
      user.email = "vladislavsunny@gmail.com";
    };
  };

  programs.starship = {
    enable = true;
  };

  home.packages = with pkgs; [
    wofi
    vscode
    telegram-desktop
    firefox
    google-chrome
    vitetris
    lazygit
    yandex-disk
    obsidian
    cmatrix
    bat
    yandex-music
    cava
    nixfmt
  ];
}
