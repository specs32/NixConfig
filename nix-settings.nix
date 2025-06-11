{ ... }:

{
  # Nix Configuration
  nix.nixPath = [ "nixos-config=/home/bob/.config/NixConfig/configuration.nix" ];
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];    
  };

  nixpkgs.config.allowUnfree = true;

}
