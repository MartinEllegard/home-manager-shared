{ config, pkgs, ... }:
{
  # Add common programs for home
  home.packages = [
    # Shell
    pkgs.fish
    pkgs.zsh

    # Editors
    pkgs.neovim
    pkgs.helix

    # Dev tools
    pkgs.insomnia
    pkgs.lazygit
    pkgs.lazydocker

    # Terminal candy
    pkgs.pfetch
    pkgs.starship

    # Terminal utils
    pkgs.tmux
    pkgs.ripgrep
    pkgs.eza
    pkgs.fd
    pkgs.jq
    pkgs.zoxide
    pkgs.gh
    pkgs.lazydocker
    pkgs.lazygit

    # Dev
    pkgs.uv
    pkgs.go
    pkgs.rustup
    pkgs.nodejs
    pkgs.unzip
    pkgs.dotnet-sdk_8

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

      ".config/fish/config.fish".source = ./dotfiles/fish/config.fish;
      ".config/fish/conf.d/nix.fish".source = ./dotfiles/fish/conf.d/nix.fish;

      ".config/nvim/lua".source = ./dotfiles/nvim/lua;
      ".config/nvim/init.lua".source = ./dotfiles/nvim/init.lua;
      ".config/nvim/LICENSE".source = ./dotfiles/nvim/LICENSE;
      ".config/nvim/stylua.toml".source = ./dotfiles/nvim/stylua.toml;
      ".config/nvim/.neoconf.json".source = ./dotfiles/nvim/.neoconf.json;
      ".config/helix".source = ./dotfiles/helix;

      ".config/bottom".source = ./dotfiles/bottom;
      ".config/btop".source = ./dotfiles/btop;

      ".config/starship".source = ./dotfiles/starship;
      ".config/tmux".source = ./dotfiles/tmux;
      ".tmux.conf".source = ./dotfiles/tmux.conf;
      ".config/zellij".source = ./dotfiles/zellij;
    };
}
