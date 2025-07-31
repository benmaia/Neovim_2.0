return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
  -- {
  --   "rhysd/vim-clang-format",
  --   event = "VeryLazy",
  -- },
  {
    "chipsenkbeil/distant.nvim",
    branch = "v0.2",
    config = function() require("distant"):setup() end,
    manager = {
      lazy = true,
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup {
        flavour = "macchiato",
      }
    end,
    lazy = false,
  },
  {
    "rmagatti/goto-preview",
    config = function() require("goto-preview").setup {} end,
  },
  {
    "xiyaowong/nvim-transparent",
    lazy = false,
  },
  {
    "rizsotto/bear",
    event = "VeryLazy",
  },
  {
    "almo7aya/openingh.nvim",
    event = "VeryLazy",
  },
  {
    "github/copilot.vim",
    event = "VeryLazy",
    config = function()
      -- Additional Copilot configuration if needed
      vim.g.copilot_assume_mapped = true
      vim.api.nvim_set_keymap("i", "<M-s>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
      vim.keymap.set("i", "<M-w>", "<Plug>(copilot-accept-word)")
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      -- See Configuration section for options
    },
  },
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    config = function()
        require("peek").setup()
        vim.api.nvim_create_user_command("PeekOpen", require("peek").open, {})
        vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
    end,
},
}
