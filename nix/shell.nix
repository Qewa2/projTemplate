{
        perSystem = { pkgs, ... }: {
                devShells.default = pkgs.mkShell {
                        buildInputs = with pkgs; [
                                cargo
                                rustc
                                rustfmt
                                clippy
                                rust-analyzer
                        ];

                        nativeBuildInputs = [ pkgs.pkg-config ];

                        env.RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}";
                };

        };
} 
