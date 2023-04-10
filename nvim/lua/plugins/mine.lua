return{
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  {
    "rhysd/vim-clang-format",
    event = "VeryLazy",
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require('catppuccin').setup {
        flavour = "macchiato"
      }
    end,
    lazy = false,
  },
  {
    'rmagatti/goto-preview',
    config = function()
      require('goto-preview').setup {}
    end
  },
  {
    "xiyaowong/nvim-transparent",
    lazy = false,
  },
  {
    "karb94/neoscroll.nvim",
    lazy = false,
    config = function()
      require('neoscroll').setup({
        -- All these keys will be mapped to their corresponding default scrolling animation
        hide_cursor = true,          -- Hide cursor while scrolling
        stop_eof = true,             -- Stop at <EOF> when scrolling downwards
        respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil,       -- Default easing function
        pre_hook = nil,              -- Function to run before the scrolling animation starts
        post_hook = nil,             -- Function to run after the scrolling animation ends
        performance_mode = true,    -- Disable "Performance Mode" on all buffers.
      })
      local t    = {}
      -- Syntax: t[keys] = {function, {function arguments}}
      t['<C-u>'] = { 'scroll', { '-0.03', 'false', '1' } }
      t['<C-d>'] = { 'scroll', { '0.03', 'false', '1' } }

      require('neoscroll.config').set_mappings(t)
    end
  },
}
