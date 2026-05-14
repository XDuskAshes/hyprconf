{
  description = "Hyprland Config Flake";

  inputs = {
    nixpkgs = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = with pkgs; [
        lua
        lua-language-server
      ];

      shellHook = ''
        echo "It's hypr time";
      '';
    };
  };
}
