{
  description = "NixOS multi-host with shared config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }:
    let
      system = "x86_64-linux";

      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in
    {
      nixosConfigurations.pc-nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./hosts/pc-nixos.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.vladg00dman = import ./home-manager/home.nix;
            home-manager.extraSpecialArgs = {
              isNvidia = true;
            };
          }
        ];
      };

      nixosConfigurations.laptop-nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./hosts/laptop-nixos.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.vladg00dman = import ./home-manager/home.nix;
            home-manager.extraSpecialArgs = {
              isNvidia = false;
            };
          }
        ];
      };
    };
}
