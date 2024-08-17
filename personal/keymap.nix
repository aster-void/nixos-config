{
  # Configure keymap in X11
  services.xserver = {
    xkb.layout = "us";
    # xkb.variant = "workman"; .. done at hardware-side
  };

  # make console (w/o x11 session) use the same keymap
  console.useXkbConfig = true;
}
