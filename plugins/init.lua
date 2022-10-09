local overrides = require "custom.plugins.overrides"

return {

  ["goolord/alpha-nvim"] = {
    disable = false,
    override_options = overrides.alpha
  },

  ["folke/which-key.nvim"] = {
    disable = false,
  },

  ["folke/todo-comments.nvim"]={
  event = "BufRead",
  config = function()
    require("todo-comments").setup()
  end,
  },

  ["wakatime/vim-wakatime"]={},

  -- ['sindrets/diffview.nvim'] = {
  --   requires = 'nvim-lua/plenary.nvim',
  --   event = "BufRead",
  -- },

  ["vimwiki/vimwiki"] = {
    config = function()
      vim.g.vimwiki_list = {
        {
          path = '~/Documents/VimWiki/',
          path_html = '~/Documents/VimWiki/html_convert',
          -- syntax = 'markdown',
          -- ext  = '.md',
        }
      }
      -- TODO: add custom symbols in vimwiki
      -- vim.g.vimwiki_listsyms = {
      --   ' ✗○◐●✓'
      -- }
    end
  },

  ["ggandor/lightspeed.nvim"] = {
    event = "BufRead",
  },

  ["folke/trouble.nvim"]={
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
  },

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- -- Install a plugin
  -- ["max397574/better-escape.nvim"] = {
  --   event = "InsertEnter",
  --   config = function()
  --     require("better_escape").setup()
  --   end,
  -- },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    disable = true,
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
