{ pkgs, ... }:
{
  nixpkgs.config = {
    allowUnfree = true;
  };

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

    # Other
    home-manager
  ];
}
