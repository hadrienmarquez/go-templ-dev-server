{
  description = "A go development environment with templ";

  inputs = {
   nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; 
    go_pkgs.url =  "github:NixOS/nixpkgs/c0b7a892fb042ede583bdaecbbdc804acb85eabe";
    templ_pkgs.url = "github:NixOS/nixpkgs/160b762eda6d139ac10ae081f8f78d640dd523eb";
  };

  outputs = { self, nixpkgs, go_pkgs, templ_pkgs }: 
  let
    system = "x86_64-linux";
   
    pkgs = import nixpkgs {
      inherit system;
    }; 
    go = go_pkgs.legacyPackages.${system};
    templ = templ_pkgs.legacyPackages.${system};  
    in {
    devShells.${system}.default =  pkgs.mkShell {
        
        packages =  [
            go.go_1_22
            pkgs.gotools
            templ.templ
            pkgs.nodejs_21
            ];
    };

  };
}
