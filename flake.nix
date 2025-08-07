{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    snowfall-lib = {
      url = "github:awfixers-stuff/lib";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    axylos-modules = {
      url = "github:awfixers-stuff/axylos-modules";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    icicle = {
      url = "github:awfixers-stuff/icicle";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-data = {
      url = "github:awfixers-stuff/nix-data";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixos-generators = {
      url = "github:nix-community/nixos-generators";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs:
    inputs.snowfall-lib.mkFlake rec {
      inherit inputs;
      channels-config.allowUnfree = true;

      systems.modules.nixos = with inputs; [
        nix-data.nixosModules.nix-data
        icicle.nixosModules.icicle
        axylos-modules.nixosModules.gnome
        axylos-modules.nixosModules.kernel
        axylos-modules.nixosModules.networking
        axylos-modules.nixosModules.pipewire
        axylos-modules.nixosModules.printing
        axylos-modules.nixosModules.axylos
        axylos-modules.nixosModules.metadata
      ];

      src = ./.;
    };
}
