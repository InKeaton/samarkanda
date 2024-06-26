
{ config, pkgs, inputs, ... }:

{
    wayland.windowManager.hyprland = {
        settings = {
            ########################################################################################
            # WINDOWS
            ########################################################################################
            
            general = {
                gaps_in = "5";
                gaps_out = "20";
                border_size = "0";
                "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
                "col.inactive_border" = "rgba(595959aa)";

                layout = "dwindle";
            };

            decoration = {
                # round corners
                rounding = "15";
                # shadows
                drop_shadow = "yes";
                shadow_range = "4";
                shadow_render_power = "3";
                "col.shadow" = "rgba(1a1a1aee)";
                # blur
                blur = {
                    enabled = "yes";
                    new_optimizations = "true";
                    size = "10";
                    passes = "3";
                    xray = "true";
                };
            };

            animations = {
                enabled = "yes";

                bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";

                animation = [
                    "windows, 1, 7, myBezier"
                    "windowsOut, 1, 7, default, popin 80%"
                    "border, 1, 10, default"
                    "borderangle, 1, 8, default"
                    "fade, 1, 7, default"
                    "workspaces, 1, 6, default"
                ];
            };

            dwindle = {
                # See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more
                pseudotile = "yes"; # master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
                preserve_split = "yes"; # you probably want this
                no_gaps_when_only = "true";
            };

            master = {
                # See https://wiki.hyprland.org/Configuring/Master-Layout/ for more
                new_is_master = "true";
            };

            # Example windowrules
            windowrule = [
                "float, ^(pavucontrol)$"
                "opacity 0.0 override 0.0 override,class:^(xwaylandvideobridge)$"
                "noanim,class:^(xwaylandvideobridge)$"
                "noinitialfocus,class:^(xwaylandvideobridge)$"
                "maxsize 1 1,class:^(xwaylandvideobridge)$"
                "noblur,class:^(xwaylandvideobridge)$"
            ];
        };
    };
}