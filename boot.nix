{ pkgs, config, ... }:

{
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelModules = [
    "nct6775"
  ];

  boot.kernelParams = [
    "amd_pstate=active"
  ];





}
