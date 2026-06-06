---@module 'hl'

-- Some default env vars.
hl.env("XCURSOR_SIZE", 20)
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")

-- change to qt6ct if you have that
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")

-- Hyprshot
hl.env("HYPRSHOT_DIR", os.getenv("HOME") .. "/Pictures/Screenshots/")


