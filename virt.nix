{ pkgs, ... }:

{
  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      swtpm.enable = true;
      ovmf.enable = true;
      ovmf.packages = [ pkgs.OVMFFull.fd ];
    };
  };

  programs.virt-manager.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;

}
