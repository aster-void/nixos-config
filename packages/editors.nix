{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # code editors

    # Terminal editors
    vim
    helix

    # Language Servers

    ## Rust
    rustfmt
    rust-analyzer
    taplo # a LS for TOML

    ## Go
    gopls
    golangci-lint
    golangci-lint-langserver

    ## Dockerfile, docker compose
    dockerfile-language-server-nodejs
    docker-compose-language-service
    yaml-language-server

    ## F#
    fsautocomplete

    ## Nix
    alejandra
    nil

    ## TS/JS/CSS/HTML/ESLint
    nodePackages_latest.typescript-language-server
    tailwindcss-language-server
    vscode-langservers-extracted # HTML/CSS/JSON/ESLint all in one

    ## Markdown
    marksman
    markdown-oxide
  ];
}
