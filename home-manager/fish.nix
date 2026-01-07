{
  programs.fish = {
    enable = true;
    shellAliases = {
      btw = "echo i use nixos btw";
      nrs = "sudo nixos-rebuild switch --impure --flake /home/$USER/nixos-config#pc-nixos";
      nup = "nix flake update --flake /home/$USER/nixos-config && sudo nixos-rebuild switch --impure --flake /home/$USER/nixos-config#pc-nixos";
    };
  };

  programs.starship = {
    enable = true;
  };
}
