---@module 'hl'

hl.config({
    general = {
        -- See https://wiki.hyprland.org/Configuring/Variables/ for more
        -- Default Setting
        -- gaps_in = 5
        -- gaps_out = 20
        -- border_size = 2
        -- col.active_border = rgba(33ccffee) rgba(00ff99ee) 45deg
        -- col.inactive_border = rgba(595959aa)
        -- layout = dwindle
        gaps_in = 4,
        gaps_out = 8,
        border_size = 1,
        col = {
            active_border = "rgb(ebdbb2)",
            inactive_border = "rgb(3c3836)",
        },
        layout = "scrolling",
        resize_on_border = true,
        extend_border_grab_area = 20,
        -- Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
        allow_tearing = false,
    },
})

hl.config({
    scrolling = {
        column_width = 0.9,
    },
})

hl.config({
    decoration = {
        -- See https://wiki.hyprland.org/Configuring/Variables/ for more
        rounding = 5,
        blur = {
            enabled = true,
            size = 3,
            passes = 2,
            new_optimizations = true,
        },
        shadow = {
            enabled = false,
        },
    },
})


hl.config({
    animations = {
        enabled = 1,
    },
})

hl.animation({ leaf = "windows", enabled = true, speed = 3, bezier = "default", style = "popin"})
hl.animation({ leaf = "workspaces", enabled = true, speed = 5, bezier = "default", style = "slidevert" })

hl.config({
    misc = {
        -- See https://wiki.hyprland.org/Configuring/Variables/ for more
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        col = {splash = "0x665c54"},
        splash_font_family = "JetBrains Mono",
        force_default_wallpaper = -1,
        -- Set to 0 or 1 to disable the anime mascot wallpapers
        mouse_move_enables_dpms = false,
    },
})
