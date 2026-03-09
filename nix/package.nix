{
        perSystem = { config, self', pkgs, ... }: {
                packages.default = 
                        pkgs.rustPlatform.buildRustPackage {
                                name = "projTemplate";
                                src = ../.;
                                cargoLock.lockFile = ../Cargo.lock;

                                buildInputs = [ pkgs.glib ];

                                nativeBuildInputs = [ pkgs.pkg-config ];
                        };
        };
}
