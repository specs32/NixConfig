{ pkgs, config, ...}:

{

  networking.firewall.enable = true;
  networking.hostName = "Oumuamua"; # Define your hostname.
  networking.networkmanager.enable = true;



}
