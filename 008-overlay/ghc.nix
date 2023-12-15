with (import <nixpkgs> { config = {}; overlays = []; });

#haskell.packages.ghc927.ghcWithPackages (p: with p; [  # works
#haskell.packages.ghc928.ghcWithPackages (p: with p; [  # works
#haskell.packages.ghc945.ghcWithPackages (p: with p; [  # works

haskell.packages.ghc962.ghcWithPackages (p: with p; [   # does not work
  aeson
])
