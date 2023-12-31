{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default =
	  pkgs.mkShellNoCC {
	    name = "rules_nixpkgs_shell";
	    packages = with pkgs; [ bazel_5 bazel-buildtools cacert nix git ];
	    shellHook = ''
	      export PS1="\n[super-simple-cc-nix:\w]$ \0"
	    '';
	  };
	});
}
