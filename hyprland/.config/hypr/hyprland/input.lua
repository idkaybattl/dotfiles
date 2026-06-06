---@module 'hl'

hl.config({
    input = {
        kb_layout = "eu",
        follow_mouse = 1,
        mouse_refocus = false,
        sensitivity = 0,
        -- -1.0 - 1.0, 0 means no modification.
        touchpad = {
            natural_scroll = false,
            clickfinger_behavior = true,
            disable_while_typing = false,
            scroll_factor = 0.4,
        },
    },
})
