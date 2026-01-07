{
  config,
  pkgs,
  lib,
  ...
}:

{
  services.xserver.videoDrivers = [ "intel" ];
}
