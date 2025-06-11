{ pkgs, ... }:

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
    nil
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
    usbutils
    obs-studio
    inxi
    pciutils
    mesa-demos
    sddm-astronaut
    kdePackages.qtmultimedia
    nmap
    libreoffice-qt
    hunspell
    hunspellDicts.en_US
    hunspellDicts.de_DE
    qt6.full
    kdePackages.filelight
  ];

}
