return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "pyright",
        "mypy",
        "ruff",
        "ruff-lsp",
        "rust-analyzer",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "python",
        "rust",
      },
    },
  },

  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },

  {
    "nvim-neotest/neotest-python",
    dependencies = {
      "nvim-neotest/neotest",
    },
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },

    {
      "folke/noice.nvim",
      event = "VeryLazy",
      opts = {
        -- add any options here
      },
      dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        "rcarriga/nvim-notify",
      },
    },

    {
      "mrcjkb/rustaceanvim",
      version = "^4", -- Recommended
      lazy = false, -- This plugin is already lazy
    },

    {
      "tris203/precognition.nvim",
      event = "VeryLazy",
      config = {
        startVisible = true,
        showBlankVirtLine = true,
        highlightColor = {fg = '#f72238'},
        hints = {
             Caret = { text = "^", prio = 5 },
             Dollar = { text = "$", prio = 1 },
             MatchingPair = { text = "%", prio = 5 },
             Zero = { text = "0", prio = 1 },
             w = { text = "w", prio = 10 },
             b = { text = "b", prio = 9 },
             e = { text = "e", prio = 8 },
             W = { text = "W", prio = 7 },
             B = { text = "B", prio = 6 },
             E = { text = "E", prio = 5 },
        },
        gutterHints = {
            G = { text = "G", prio = 10 },
            gg = { text = "gg", prio = 9 },
            PrevParagraph = { text = "{", prio = 8 },
            NextParagraph = { text = "}", prio = 8 },
        },
      },
    },
  },
}
