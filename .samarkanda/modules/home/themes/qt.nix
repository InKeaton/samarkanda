{ config, pkgs, inputs, ... }:

{
    # manage qt theme 
    qt = {
        enable = true;
        platformTheme = "gtk";
        style= {
            name = "adwaita-dark";
            package = pkgs.adwaita-qt;
        };
    };
}