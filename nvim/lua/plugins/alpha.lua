return {
  "goolord/alpha-nvim",
  cmd = "Alpha",
  opts = function()
    local dashboard = require "alpha.themes.dashboard"
    dashboard.section.header.val = {
      "                       ~G#########&5^J#########&B!~G#########&P^^P##########&?    :5########&J      ",
      "                      ?#&&&&&&&&@&?~P@&&&&&&&&@P~?&&&&&&&&&@&J 7#@&&&&&&&&&&@?   ~B@&&&&&&&&@Y      ",
      "                    ^P&&&&&&&&&@G~7#@&&&&&&&&&J^P&&&&&&&&&@B!:5&&&&&&&&&&&&&@?  ?#&&&&&&&&&&&Y      ",
      "                   7B@&&&&&&&&&Y^5&&&&&&&&&@B~!#@&&&&&&&&&5:~B@&&&&&&&&&&&&&@? Y&&&&&&&&&&&&&Y      ",
      "                 :Y&&&&&&&&&@B!!B@&&&&&&&&&Y^Y&&&&&&&&&@#7 J&&&&&&&&&&&&&&&&&5G@&&&&&&&&&&&&&Y      ",
      "                ~G@&&&&&&&&&P^J&&&&&&&&&@#7~G@&&&&&&&&@G^^P@&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&Y      ",
      "               ?#&&&&&&&&&#?~P@&&&&&&&&@P^?&&&&&&&&&&&J 7#&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&Y      ",
      "             ^P&&&&&&&&&@G~7#&&&&&&&&&&?^P@&&&&&&&&@B~:5&&&&&&&&&&@G5&&&&&&&&&&&&&&YB&&&&&&&&Y      ",
      "            7B@&&&&&&&&&Y^5&&&&&&&&&@G~7#@&&&&&&&&&5:~B@&&&&&&&&&&Y:7&&&&&&&&&&&&#7:B&&&&&&&&Y      ",
      "          :Y&&&&&&&&&@B!!B@&&&&&&&&&Y^Y&&&&&&&&&@#7 J&&&&&&&&&&@B!  7&&&&&&&&&&@G~ :B&&&&&&&&Y      ",
      "         ~G@&&&&&&&&&5^J&&&&&&&&&@#7~B@&&&&&&&&@P^^P&&&&&&&&&&&5:   7&&&&&&&&&&5:  :B&&&&&&&&Y      ",
      "        J&@&&&&&&&&#?~G@&&&&&&&&&P~J&@&&&&&&&&&J 7#@&&&&&&&&@B7     7@&&&&&&&&J    :B&&&&&&&@Y      ",
      "      ^5&#########G~!B&#########J^5&#########G! Y###########5^      7&######B!     :G#######&J      ",
      "                                                                                                    ",
      "                                                                                                    ",
      "██████  ███████ ██████  ███    ██  █████  ██████  ██████   ██████      ███    ███  █████  ██  █████ ",
      "██   ██ ██      ██   ██ ████   ██ ██   ██ ██   ██ ██   ██ ██    ██     ████  ████ ██   ██ ██ ██   ██",
      "██████  █████   ██████  ██ ██  ██ ███████ ██████  ██   ██ ██    ██     ██ ████ ██ ███████ ██ ███████",
      "██   ██ ██      ██   ██ ██  ██ ██ ██   ██ ██   ██ ██   ██ ██    ██     ██  ██  ██ ██   ██ ██ ██   ██",
      "██████  ███████ ██   ██ ██   ████ ██   ██ ██   ██ ██████   ██████      ██      ██ ██   ██ ██ ██   ██",
    }
    dashboard.section.header.opts.hl = "DashboardHeader"

    local button = require("astronvim.utils").alpha_button
    local get_icon = require("astronvim.utils").get_icon
    dashboard.section.buttons.val = {
      button("LDR n  ", get_icon("FileNew", 2, true) .. "New File  "),
      button("LDR f f", get_icon("Search", 2, true) .. "Find File  "),
      button("LDR f o", get_icon("DefaultFile", 2, true) .. "Recents  "),
      button("LDR f w", get_icon("WordFile", 2, true) .. "Find Word  "),
      button("LDR f '", get_icon("Bookmarks", 2, true) .. "Bookmarks  "),
      button("LDR S l", get_icon("Refresh", 2, true) .. "Last Session  "),
    }

    dashboard.config.layout[1].val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) }
    dashboard.config.layout[3].val = 5
    dashboard.config.opts.noautocmd = true
    return dashboard
  end,
  config = require "plugins.configs.alpha",
}
