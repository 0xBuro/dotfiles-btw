local M = {}
local stats = require("lazy").stats()
M.statusstyle = 'minimal'
local logos = setmetatable({
    TEXT = [[
      ⡆⣸⡟⣼⣯⠏⣾⣿⢸⣿⢸⣿⣿⣿⣿⣿⣿⡟⠸⠁⢹⡿⣿⣿⢻⣿⣿⣿⣿⠄
      ⡇⡟⣸⢟⣫⡅⣶⢆⡶⡆⣿⣿⣿⣿⣿⢿⣛⠃⠰⠆⠈⠁⠈⠙⠈⠻⣿⢹⡏⠄
      ⣧⣱⡷⣱⠿⠟⠛⠼⣇⠇⣿⣿⣿⣿⣿⣿⠃⣰⣿⣿⡆⠄⠄⠄⠄⠄⠉⠈⠄⠄
      ⡏⡟⢑⠃⡠⠂⠄⠄⠈⣾⢻⣿⣿⡿⡹⡳⠋⠉⠁⠉⠙⠄⢀⠄⠄⠄⠄⠄⠂⠄
      ⡇⠁⢈⢰⡇⠄⠄⡙⠂⣿⣿⣿⣿⣱⣿⡗⠄⠄⠄⢀⡀⠄⠈⢰⠄⠄⠄⠐⠄⠄
      ⠄⠄⠘⣿⣧⠴⣄⣡⢄⣿⣿⣿⣷⣿⣿⡇⢀⠄⠤⠈⠁⣠⣠⣸⢠⠄⠄⠄⠄⠄
      ⢀⠄⠄⣿⣿⣷⣬⣵⣿⣿⣿⣿⣿⣿⣿⣷⣟⢷⡶⢗⡰⣿⣿⠇⠘⠄⠄⠄⠄⠄
      ⣿⠄⠄⠘⢿⣿⣿⣿⣿⣿⣿⢛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⢄⡆⠄⢀⣪⡆⠄⣿
      ]],
    UWU2 = [[
             █████████████████
         ████▌█████▌█ ████████▐▀██▀
       ▄█████ █████▌ █ ▀██████▌█▄▄▀▄
       ▌███▌█ ▐███▌▌  ▄▄ ▌█▌███▐███ ▀
      ▐ ▐██  ▄▄▐▀█   ▐▄█▀▌█▐███▐█
        ███ ▌▄█▌  ▀  ▀██  ▀██████▌
         ▀█▌▀██▀ ▄         ███▐███
          ███     ▀█▀     ▐██▐███▀▌
          ▌█▌█▄         ▄▄████▀ ▀
            █▀██▄▄▄ ▄▄▀▀▒█▀█
      ]],
  },
  {
    __index = function(logos, key)
      return logos[key]
    end,
  }
)
-- the keybinds for buttons better work
M.dashboard = {
  header = vim.split(logos.TEXT, "\n"),
  buttons = {
    { "   Find File", "LDR f f" },
    { "󰈚   Recent Files", "LDR f g" },
    { "󰈭   Find Word", "LDR f r" },
  },
  message = {
    "[ ━━━━━━ ❖  ━━━━━━ ]",
  },
  footer = {
    "Loaded " .. stats.count .. " plugins",
  }
}

M.customSchemes = require("core.colors")

return M
