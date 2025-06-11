{ pkgs, config, ... }:

{
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  # boot.extraModulePackages = [ config.boot.kernelPackages.zenpower ];
  # boot.blacklistedKernelModules = [ "k10temp" ];
  boot.kernelModules = [
    "nct6775"
    # "zenpower"
  ];

  boot.kernelParams = [
    "amd_pstate=active"
  ];





}
