return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.nix" },
  {
    import = "astrocommunity.editing-support.multicursors-nvim",
    -- keys = {
    --   {
    --     mode = { "v", "n" },
    --     "<Leader>m",
    --     "<cmd>MCstart<cr>",
    --     desc = "Create a selection for selected text or word under the cursor",
    --   },
    -- },
  },
  { import = "astrocommunity.lsp.inc-rename-nvim" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.editing-support.nvim-treesitter-endwise" },
  {
    -- https://www.youtube.com/watch?v=NhTPVXP8n7w&list=PLmcTCfaoOo_grgVqU7UbOx7_RG9kXPgEr&index=16&ab_channel=DevOpsToolbox
    import = "astrocommunity.pack.full-dadbod",
    init = function()
      -- Your DBUI configuration
      -- vim.g.db_ui_disable_mappings = 1
      -- vim.g.dbs = { dev = 'mysql://root@localhost:3306/mydatabase' }
    end,
  },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function() require("go").setup() end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
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
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.debugging.telescope-dap-nvim" },
  { import = "astrocommunity.debugging.nvim-bqf" },
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  { import = "astrocommunity.debugging.persistent-breakpoints-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  -- { import = "astrocommunity.editing-support.treesj" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- { import = "astrocommunity.diagnostics.lsp_lines-nvim" }, -- Печатает ошибки прямо на той строчке где ошибка
  { import = "astrocommunity.motion.marks-nvim" }, -- Печатает ошибки прямо на той строчке где ошибка
  { "Darazaki/indent-o-matic" },
  { import = "astrocommunity.motion.hop-nvim" }, -- Печатает ошибки прямо на той строчке где ошибка
  -- { import = "astrocommunity.note-taking.neorg" }, -- Печатает ошибки прямо на той строчке где ошибка
  -- { import = "astrocommunity.motion.harpoon" }, -- Печатает ошибки прямо на той строчке где ошибка
  -- { import = "astrocommunity.indent.mini-indentscope" }, --Анимация
  -- {
  --   "folke/todo-comments.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  --   opts = {
  --     -- your configuration comes here
  --     -- or leave it empty to use the default settings
  --     -- refer to the configuration section below
  --   },
  -- },
  -- {
  --   "folke/trouble.nvim",
  --   dependencies = { "nvim-tree/nvim-web-devicons" },
  --   opts = {
  --     -- your configuration comes here
  --     -- or leave it empty to use the default settings
  --     -- refer to the configuration section below
  --   },
  -- },
  -- {
  --   'nvim-telescope/telescope.nvim', tag = '0.1.4',
  --   -- or                              , branch = '0.1.x',
  --   dependencies = { 'nvim-lua/plenary.nvim' }
  -- },
  -- { "mg979/vim-visual-multi",
  --   branch = "master",
  --   keys = {
  --     "<S-Left>",
  --     "<C-Down>",
  --     "<C-Up>",
  --     "<S-Right>",
  --     "<C-LeftMouse>",
  --     "<C-RightMouse>",
  --     "<M-C-RightMouse>",
  --     { "<C-n>", mode = { "n", "x" } },
  --     { "<Bslash><Bslash><Bslash>", mode = { "n", "x" } },
  --   },
  --   cmd = { "VMClear", "VMDebug", "VMFromSearch", "VMLive", "VMRegisters", "VMSearch", "VMTheme" },
  --   init = function()
  --     -- require("wuelnerdotexe.plugin.util").add_colorscheme_integration("visual-multi")
  --
  --     vim.api.nvim_set_var("VM_show_warnings", 0)
  --     vim.api.nvim_set_var("VM_mouse_mappings", 1)
  --     vim.api.nvim_set_var("VM_maps", { Undo = "u", Redo = "<C-r>" })
  --   end,
  -- },
  --
}
