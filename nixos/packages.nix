{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # CLI utils
    fastfetch
    btop
    vim
    wget
    git
    lazygit

    # Terminal
    kitty

    # File manager
    nemo

    # Programming stuff
    uv
    python3.10

    # Other
    home-manager
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-color-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
  ];
}
