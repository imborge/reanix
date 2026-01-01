{ config, lib, ... }: let
  cfg = config.programs.reanix;
in {
  config = lib.mkIf cfg.defaults {
    programs.reanix.extraConfig."reaper.ini" = /* dosini */ ''
      ; Disable version checking
      [reaper]
      verchk=0

      ; Disable version checking
      [SWS]
      BR - StartupVersionCheck=0 0 0000000000
    '';
  };
}
