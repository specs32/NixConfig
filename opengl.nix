{ pkgs, ... }:

{

  # Enable OpenGL
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      vaapiVdpau
      libvdpau-va-gl
      mesa
      nvidia-vaapi-driver
      nv-codec-headers-12
    ];
    extraPackages32 = with pkgs.pkgsi686Linux; [
      vaapiVdpau
      mesa
      libvdpau-va-gl
    ];
  };
}
