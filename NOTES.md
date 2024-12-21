# Notes

- issue: Fcitx5 - Mozc (not found)
  reason: fcitx5 was installed via `environment.systemPackages`. PATH pointed to fcitx5 that is not addoned, therefore couldn't find the mozc addon.
  solution:
    - remove `pkgs.fcitx5` from `environment.systemPackages` (search for `fcitx5` in case you use `with pkgs;` syntax)
    - use `i18n.inputMethod`. (read <https://nixos.wiki/wiki/Fcitx5> for more)

- issue: Cannot use input method on Slack/Discord/any other Electron app
  reason: Electron doesn't enable it by default
  solution:
    - (simple) launch them using `--enable-wayland-ime` flag, i.e. `slack --enable-wayland-ime`
      - some electron apps may have background worker that interfere with newly launched app frontend. make sure to `killall -r slack` beforehand.
    - (complex but automatic) todo: someone help me launch apps with flags on app launchers
