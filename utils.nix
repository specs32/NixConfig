{ config, pkgs, ... }:

{

  programs.firefox.enable = true;

  programs.git = {
    enable = true;
     config = {
       user.name = "specs32";
       user.email = "nicoandmomo@gmail.com";
       init.defaultBranch = "main";
       pull.rebase = true;
    };

  };

  environment.systemPackages = with pkgs; [
    stdenv
    gcc
    gnumake
    gh
    nh
    nix-output-monitor
    wget
    htop
    avrdude
    arduino-ide
    lm_sensors
    qemu
    qemu-utils
    qemu_full
    usbutils
    obs-studio
    inxi
    pciutils
    mesa-demos
    sddm-astronaut
    kdePackages.qtmultimedia
    openrgb-with-all-plugins
    nmap
    libreoffice-qt
    hunspell
    hunspellDicts.en_US
    hunspellDicts.de_DE
    qt6.full
  ];

}
