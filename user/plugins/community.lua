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
  { import = "astrocommunity.pack.vue"},
  { import = "astrocommunity.pack.typescript"},
  { import = "astrocommunity.pack.nix"},
  { import = "astrocommunity.editing-support.multicursors-nvim"},
  { import = "astrocommunity.lsp.inc-rename-nvim"},
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.pack.full-dadbod",
    init = function()
      -- Your DBUI configuration
      -- vim.g.db_ui_disable_mappings = 1
      -- vim.g.dbs = { dev = 'mysql://root@localhost:3306/mydatabase' }
    end,
  },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
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
}
