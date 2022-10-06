local overrides = require "custom.plugins.overrides"

return {

  ["goolord/alpha-nvim"] = { disable = false }, -- enables dashboard

  ["folke/which-key.nvim"] = {
    disable = false,
    -- module = "which-key",
    -- keys = { "<leader>", '"', "'", "`" },
    -- config = function()
    --   require "plugins.configs.whichkey"
    -- end,
    -- setup = function()
    --   require("core.utils").load_mappings "whichkey"
    -- end,
  },



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

  ["ggandor/lightspeed.nvim"] = {event = "BufRead",}
  -- Override plugin definition options
  -- ["neovim/nvim-lspconfig"] = {
  --   config = function()
  --     require "plugins.configs.lspconfig"
  --     require "custom.plugins.lspconfig"
  --   end,
  -- },
  --
  -- -- overrde plugin configs
  -- ["nvim-treesitter/nvim-treesitter"] = {
  --   override_options = overrides.treesitter,
  -- },
  --
  -- ["williamboman/mason.nvim"] = {
  --   override_options = overrides.mason,
  -- },
  --
  -- ["kyazdani42/nvim-tree.lua"] = {
  --   override_options = overrides.nvimtree,
  -- },
  --
  -- -- Install a plugin
  -- ["max397574/better-escape.nvim"] = {
  --   event = "InsertEnter",
  --   config = function()
  --     require("better_escape").setup()
  --   end,
  -- },
  --
  -- -- code formatting, linting etc
  -- ["jose-elias-alvarez/null-ls.nvim"] = {
  --   after = "nvim-lspconfig",
  --   config = function()
  --     require "custom.plugins.null-ls"
  --   end,
  -- },

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
