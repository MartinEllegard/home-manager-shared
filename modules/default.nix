{ config, pkgs, ... }:
{
  # Add common programs for home
  home.packages = [
    pkgs.fish

    pkgs.neovim
    pkgs.helix

    pkgs.lazygit
    pkgs.lazydocker

    pkgs.tmux
    pkgs.zoxide
    pkgs.starship
  ];

  home.file = {
    ".config/fish".source = ../dotfiles/fish;

    ".config/nvim".source = ../dotfiles/nvim;
    ".config/helix".source = ../dotfiles/helix;

    ".config/bottom".source = ../dotfiles/bottom;
    ".config/btop".source = ../dotfiles/btop;

    ".config/starship".source = ../dotfiles/starship;
    ".config/tmux".source = ../dotfiles/tmux;
    ".tmux.conf".source = ../dotfiles/tmux.conf;
    ".config/zellij".source = ../dotfiles/zellij;
  };
}
