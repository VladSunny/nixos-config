{ pkgs, ... }:
{
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
