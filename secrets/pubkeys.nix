rec {
  amberwood = [ ];
  bogster = [
    # aster
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHIUFCw/2UFXtaF5R7qOKhFMrAi6W9GSpbJ1EKNYuA58 aster@nixos"
    # root
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIldntqQ74sdKhP8yi/nFY9PM+tLDbfuWIOr2Ym4NeFh root@nixos"
  ];

  all = amberwood ++ bogster;
}
