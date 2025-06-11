{ ... }:

{
  # Nix Configuration

  # Comment out ...
  nix.nixPath = [ "nixos-config=/home/bob/.config/NixConfig/configuration.nix" ];
  # to have your nix config in the default path (/etc/nixos)
  # otherwise copy all files into the path of nix.nixPath = [ "nixos-config=/home/bob/.config/NixConfig/configuration.nix" ];


  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];    
  };

  nixpkgs.config.allowUnfree = true;

}
