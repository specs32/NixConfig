{ pkgs, ... }:

{

  services.udev.enable = true;

  services.openvpn.servers = {
    AirVPN  = {
      config = ''config /home/bob/.config/VPN/AirVPN.ovpn '';
      updateResolvConf = true;
    };
  };



  services.xserver.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];


  location.provider = "geoclue2";
  services.geoclue2.enable = true;

  services.displayManager.sddm ={
    enable = true;
    theme = "sddm-astronaut-theme";
  };

  services.desktopManager.plasma6.enable = true;

  services.printing.enable = true;
#   services.avahi = {
#     enable = true;
#     nssmdns4 = true;
#     openFirewall = true;
#   };

  environment.systemPackages = with pkgs; [ samsung-unified-linux-driver ];

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  powerManagement = {
    enable = true;
    cpuFreqGovernor = "powersave";
    cpufreq = {
      max = 5000000;
      min = 600000;
    };
  };



  services.power-profiles-daemon.enable = true;

  services.fwupd.enable = true;

  systemd.services.fancontrol = {
    enable = true;
    description = "Fan control";
    wantedBy = ["multi-user.target" "graphical.target" "rescue.target"];
    unitConfig = {
      Type = "simple";
    };
    serviceConfig = {
      ExecStart = "${pkgs.lm_sensors}/bin/fancontrol";
      Restart = "always";
    };
  };

  services.hardware.openrgb = {
    enable = true;
  };

  services.logind.extraConfig = "RuntimeDirectorySize=8G";

}
