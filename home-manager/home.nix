{ config, pkgs, ... }:

{
  home = {
    username = "vladg00dman";
    homeDirectory = "/home/vladg00dman";
    stateVersion = "25.11";
  };

  programs.kitty = {
    enable = true;
    settings = {
      background_opacity = 0.9;
      dynamic_background_opacity = "yes";
    };
  };

  programs.fish = {
    enable = true;
    shellAliases = {
      btw = "echo i use nixos btw";
      nrs = "sudo nixos-rebuild switch --impure --flake /home/vladg00dman/nixos-config#pc-nixos";
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
    nemo
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
