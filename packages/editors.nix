{ pkgs, ... }:
{
  environment.systemPackages = with pkgs;[
    # code editors
    vim
    helix

    # Language Servers

    ## Rust
    rustfmt
    rust-analyzer
    taplo # a LS for TOML

    ## Go
    gopls

    ## Nix
    nixpkgs-fmt
    nixd

    ## TS/JS/CSS/HTML/ESLint
    typescript
    nodePackages_latest.typescript-language-server
    tailwindcss-language-server
    vscode-langservers-extracted # HTML/CSS/JSON/ESLint all in one

    ## Markdown
    marksman
  ];
}
