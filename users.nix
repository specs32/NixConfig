{ pkgs, ... }:

{
    users.users.bob = {
    isNormalUser = true;
    description = "Bob";
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

#     users.users.peter = {
#     isNormalUser = true;
#     description = "Peter";
#     extraGroups = [ "libvirtd" "networkmanager" "audio" "video" ];
#     packages = with pkgs; [
#       kdePackages.kate
#       thunderbird
#       brave
#       haruna
#       tdesktop
#       gpu-viewer
#       steam
#     ];
#   };

}
