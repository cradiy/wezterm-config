local wezterm = require('wezterm')
local platform = require('utils.platform')

-- local font = 'Maple Mono SC NF'
local font_family = 'JetBrainsMono Nerd Font'
local font_size = platform.is_mac and 12 or 9

return {
    -- font = wezterm.font({
        --    family = font_family,
        --    weight = 'Medium',
        -- }),
        enable_wayland = true,
        font = wezterm.font_with_fallback {
            { family = 'JetBrains Mono Nerd Font',         weight = 'Medium', },
            { family = "Noto Sans",              weight = "Regular", },
            { family = "Noto Sans Arabic",       weight = "Regular" },
            { family = "Noto Sans Meetei Mayek", weight = "Regular" },
            { family = "Noto Sans Ol Chiki",     weight = "Regular" },
            { family = "Nimbus Sans",            weight = "Regular" },
            { family = "Comfortaa",              weight = "Regular" },
            { family = "Montserrat",             weight = "Regular" },
            { family = "Carlito",                weight = "Regular" },
            { family = "Noto Sans Math",         weight = "Regular" },
            "Unifont",
        },
        font_size = font_size,
        warn_about_missing_glyphs=false,
        --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
        freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
        freetype_render_target = 'HorizontalLcd', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
    }
