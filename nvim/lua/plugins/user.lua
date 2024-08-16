-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- == Examples of Overriding Plugins ==

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
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
      return opts
    end,
  },

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
}
