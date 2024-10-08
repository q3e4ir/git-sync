{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      /home/q3e4ir/dotfiles/nixos/configuration.nix
    ];
}