{ config, pkgs, ... }:
{
  # Add common programs for home
  home.packages = [
    pkgs.fish

    pkgs.neovim
    pkgs.helix

    pkgs.lazygit
    pkgs.lazydocker

    pkgs.pfetch
    pkgs.tmux
    pkgs.zoxide
    pkgs.starship
  ];

  home.file =
    let
      wallpapers = builtins.fetchGit {
        url = "https://github.com/MartinEllegard/wallpapers";
        rev = "76e3f418b95f5e46f2f30a0c15c1258c1d060d1b";
      };
    in
    {
      "wallpapers/".source = wallpapers;

      ".config/fish/config.fish".source = ../dotfiles/fish/config.fish;

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
