-- lua/plugins.lua

return {
    -- Lazy.nvim (package manager)
    {
      "folke/lazy.nvim",
      lazy = false, -- Lazy.nvim should not be lazy-loaded
      priority = 1000, -- Load Lazy.nvim first
    },
  
    -- Colorscheme
    {
      "catppuccin/nvim",
      name = "catppuccin",
      lazy = false,
      priority = 1000,
      config = function()
        vim.cmd.colorscheme("catppuccin") -- Set colorscheme
      end,
    },
  
    -- Telescope (fuzzy finder)
    {
      "nvim-telescope/telescope.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function()
        require("telescope").setup({}) -- Telescope setup
      end,
    },
  
    -- Treesitter (syntax highlighting)
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function()
        require("nvim-treesitter.configs").setup({
          ensure_installed = { "lua", "python", "javascript", "typescript", "bash" },
          highlight = { enable = true },
        })
      end,
    },
  
    -- LSP (Language Server Protocol)
    {
      "neovim/nvim-lspconfig",
      config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({}) -- Lua LSP
        lspconfig.pyright.setup({}) -- Python LSP
      end,
    },
  
    -- Mason (LSP installer)
    {
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup()
      end,
    },
  
    -- Autocompletion (nvim-cmp)
    {
      "hrsh7th/nvim-cmp",
      dependencies = {
        "hrsh7th/cmp-nvim-lsp", -- LSP source
        "hrsh7th/cmp-buffer",   -- Buffer source
        "hrsh7th/cmp-path",     -- Path source
        "L3MON4D3/LuaSnip",     -- Snippet engine
      },
      config = function()
        local cmp = require("cmp")
        cmp.setup({
          snippet = {
            expand = function(args)
              require("luasnip").lsp_expand(args.body)
            end,
          },
          mapping = cmp.mapping.preset.insert({
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
          }),
          sources = cmp.config.sources({
            { name = "nvim-lsp" },
            { name = "buffer" },
            { name = "path" },
          }),
        })
      end,
    },
  }