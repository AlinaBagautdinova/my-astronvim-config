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
}
