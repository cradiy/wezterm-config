local wezterm = require('wezterm')


local M = {}



M.setup = function()

    wezterm.on('update-right-status', function(window, _pane)
        window:set_left_status(wezterm.format({{
            Text = '   '
        }}))
    end)
end

return M
