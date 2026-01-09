{
  programs.fish = {
    enable = true;
    shellAliases = {
      btw = "echo i use nixos btw";
      nrs = "sudo nixos-rebuild switch --impure --flake /home/$USER/nixos-config#(hostname)";
      nup = "nix flake update --flake /home/$USER/nixos-config && sudo nixos-rebuild switch --impure --flake /home/$USER/nixos-config#(hostname)";
    };
  };

  programs.starship = {
    enable = true;
  };
}
