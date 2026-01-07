{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Browser
    firefox
    google-chrome

    # Social
    telegram-desktop
    wofi

    # IDE
    vscode

    # CLI
    cava
    cmatrix
    vitetris

    # Cloud
    yandex-disk

    # Self-development
    obsidian

    # Music
    yandex-music

    # Formaters
    nixfmt
  ];
}
