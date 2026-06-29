---@module 'hl'


hl.workspace_rule({
    workspace = 1,
    monitor = "HDMI-A-1",
})

hl.workspace_rule({
    workspace = 2,
    monitor = "HDMI-A-1",
})

hl.workspace_rule({
    workspace = 3,
    monitor = "HDMI-A-1",
})

hl.workspace_rule({
    workspace = 8,
    monitor = "DP-1",
})

hl.workspace_rule({
    workspace = 9,
    monitor = "DP-1",
})

hl.workspace_rule({
    workspace = 10,
    monitor = "DP-1",
})

-- autostart workspaces
hl.window_rule({ match = { class = "zen" }, workspace = "2 silent" })
hl.window_rule({ match = { class = "org.mozilla.Thunderbird" }, workspace = "8 silent" })
hl.window_rule({ match = { class = "whatsdesk" }, workspace = "9 silent" })
hl.window_rule({ match = { class = "discord" }, workspace = 10 })


-- random rules
hl.window_rule({
    name = "eldenring",
    match = {
        title = "ELDEN RING™",
    },
    render_unfocused = true,
})

hl.window_rule({
    name  = "firefox",
    match = {
        class = "firefox",
    },
    focus_on_activate = true
})

hl.window_rule({
    name  = "zen",
    match = {
        class = "zen",
    },
    focus_on_activate = true
})

hl.window_rule({
    name  = "steam",
    match = {
        class = "",
    },
    float = false,
})

-- fullscreening for games
hl.window_rule({
    name  = "steamapps",
    match = {
        class = "steam_app_*",
    },
    fullscreen = true
})

hl.window_rule({
    name  = "steamapps",
    match = {
        class = "steam_app_*",
    },
    immediate = true,
})
