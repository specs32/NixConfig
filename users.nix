{ config,  pkgs, ... }:

{
   users.users.bob = {
    isNormalUser = true;
    description = "bob";
    extraGroups = [ "libvirtd" "networkmanager" "audio" "video" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
      thunderbird
      brave
      mpv
      mc
      zsh
      oh-my-zsh
      fish
      signal-desktop
      tdesktop
      gpu-viewer
      steam
      
    ];



  };

  # Change runtime directory size
  services.logind.extraConfig = "RuntimeDirectorySize=8G";


}
