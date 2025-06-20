{ pkgs, config, ... }:

{
  system.nixos.label = "Bob";
  #adjust --
  boot = {
    loader.systemd-boot.enable = true;
    loader.efi.canTouchEfiVariables = true;
    initrd.enable = true;
    initrd.verbose = false;
    initrd.systemd.enable = true;
    initrd.availableKernelModules = [ "amdgpu" ];
    initrd.kernelModules          = [ "amdgpu" ];
    kernelPackages = pkgs.linuxPackages_latest;
    kernelModules = [ "nct6775" ];
    consoleLogLevel = 3;
    kernelParams = [
      "quiet"
      "splash"
      "boot.shell_on_fail"
      "udev.log_priority=3"
      "rd.systemd.show_status=auto"
      ];

    loader.timeout = 0;

    plymouth = {
      enable = true;
      font = "${pkgs.jetbrains-mono}/share/fonts/truetype/JetBrainsMono-Regular.ttf";
      themePackages = [ pkgs.nixos-bgrt-plymouth ];
    };
  };
}
