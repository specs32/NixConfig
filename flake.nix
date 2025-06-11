{
  description = "Bobs Config";

  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, ... } @ inputs:
  {
    nixosConfigurations.Oumuamua = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./boot.nix
        ./configuration.nix
        ./fonts.nix
        ./hardware-configuration.nix
        ./lang.nix
        ./net.nix
        ./nix-settings.nix
        ./nvidia.nix
        ./opengl.nix
        ./services.nix
        ./utils.nix
        ./users.nix
        ./virt.nix
      ];
    };
  };
}
