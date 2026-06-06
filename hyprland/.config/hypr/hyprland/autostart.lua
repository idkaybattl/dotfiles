-- Autostart
local aliases = require("hyprland.aliases")

hl.on("hyprland.start", function()
    -- xdg-desktop-portal-hyprland
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

    -- Notification daemon
    hl.exec_cmd("dunst")

    -- Authentication agent
    hl.exec_cmd("systemctl --user start hyprpolkitagent")

    -- Shell
    hl.exec_cmd("qs -c noctalia-shell")

    -- Wallpaper manager
    hl.exec_cmd("hyprpaper")

    -- kdeconnect
    hl.exec_cmd("kedconnectd")
    hl.exec_cmd("kdeconnect-indicator")

    -- Open Tablet Driver
    hl.exec_cmd("otd-daemon")

    -- Launch random necessities
    hl.exec_cmd("discover-overlay")
    -- hl.exec_cmd(aliases.terminal)
    hl.exec_cmd(aliases.browser)
    hl.exec_cmd("whatsdesk")
    hl.exec_cmd(aliases.mail)
    hl.exec_cmd(aliases.discord)
end)
