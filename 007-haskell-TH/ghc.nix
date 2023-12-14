with (import <nixpkgs> { config = {}; overlays = []; });

haskell.packages.ghc928.ghcWithPackages (p: with p; [
  aeson
])
