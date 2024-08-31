{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      /home/q3e4ir/git-sync/nixos/configuration.nix
    ];
}