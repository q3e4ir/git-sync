{ config, pkgs, ... }:

{

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  users.users.q3e4ir = {
    isNormalUser = true;
    description = "Yaroslav Durych";
    extraGroups = ["audio" "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  services.getty.autologinUser = "q3e4ir";

  networking.hostName = "nixos"; 
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Kyiv";
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "uk_UA.UTF-8";
    LC_IDENTIFICATION = "uk_UA.UTF-8";
    LC_MEASUREMENT = "uk_UA.UTF-8";
    LC_MONETARY = "uk_UA.UTF-8";
    LC_NAME = "uk_UA.UTF-8";
    LC_NUMERIC = "uk_UA.UTF-8";
    LC_PAPER = "uk_UA.UTF-8";
    LC_TELEPHONE = "uk_UA.UTF-8";
    LC_TIME = "uk_UA.UTF-8";
  };

  hardware.pulseaudio.enable = true;
  nixpkgs.config.pulseaudio = true;
  hardware.pulseaudio.extraConfig = "load-module module-combine-sink";

  services.blueman.enable = true;
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true; 
 
  security.polkit.enable = true;
  nixpkgs.config.allowUnfree = true;

  environment.variables = {
    SUDO_EDITOR = "codium";
    SYSTEMD_EDITOR = "codium";
    EDITOR = "codium";
    VISUAL = "codium";
  };

  fonts.packages = with pkgs; [
     (nerdfonts.override {
        fonts = [
          "JetBrainsMono"
        ];
      })
  ];

  programs.bash.shellAliases = {
  sshlog = "ssh-keygen -t rsa -b 4096 -P '' -f /home/q3e4ir/.ssh/id_rsa; cat ~/.ssh/id_rsa.pub; echo 'https://github.com/settings/ssh/new'; read -p 'apply ssh-key' apply; cd ~/dotfiles; git init; git remote rm origin; git remote add origin git@github.com:q3e4ir/dotfiles.git";
  
  dot commit = "/home/q3e4ir/dotfiles/commit.sh";
  dot set = "/home/q3e4ir/dotfiles/set-configs.sh";

  vs-extlist = "codium --list-extensions | xargs -L 1 echo codium --install-extension";
  };
  
  environment.systemPackages = with pkgs; [

    #CLI
    git
    neofetch
    #unzip
    #ntfs3g
    polkit
    polkit_gnome
    #lxsession

    #Software
    google-chrome
    kitty
    vscodium
    telegram-desktop
  
  ];
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  system.stateVersion = "24.05";
}
