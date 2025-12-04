{ config, lib, ... }: let
  cfg = config.programs.reanix;
in {
  config = lib.mkIf cfg.defaults {
    programs.reanix.config."reaper.ini" = /* dosini */ ''
      ; Disable version checking
      [reaper]
      verchk=0
    '';

    # TODO: disable SWS version checking if the extension is enabled
  };
}
