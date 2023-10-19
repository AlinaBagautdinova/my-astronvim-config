return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy",
  opts = {
    load = {
      -- ["core.integrations.treesitter "] = {},
      -- ["core.export"] = {},
      -- ["core.export.markdown"] = {
      --   extension = "md",
      -- }, -- Loads default behaviour
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.neorgcmd"] = {},
      ["core.looking-glass"] = {},
      ["core.integrations.nvim-cmp"] = {},
      ["core.export"] = { config = { extensions = "all" } },
      ["core.syntax"] = {},
      ["core.integrations.treesitter"] = {},
      ["core.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.keybinds"] = {
        -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
        config = {
          neorg_leader = "<Leader>",
          hook = function(keybinds)
            -- local leader = keybinds.leader
            -- Unmaps any Neorg key from the `norg` mode
            -- keybinds.unmap("norg", "n", "gtd")

            -- Binds the `gtd` key in `norg` mode to execute `:echo 'Hello'`
            -- keybinds.map("norg", "n", "gtd", "<cmd>echo 'Hello!'<CR>")

            -- Remap unbinds the current key then rebinds it to have a different action
            -- associated with it.
            -- The following is the equivalent of the `unmap` and `map` calls you saw above:
            -- keybinds.remap("norg", "n", "gtd", "<cmd>echo 'Hello!'<CR>")

            -- Sometimes you may simply want to rebind the Neorg action something is bound to
            -- versus remapping the entire keybind. This remap is essentially the same as if you
            -- did `keybinds.remap("norg", "n", "<C-Space>, "<cmd>Neorg keybind norg core.qol.todo_items.todo.task_done<CR>")
            -- keybinds.remap_event("norg", "n", "<C-Space>", "core.qol.todo_items.todo.task_done")

            -- Want to move one keybind into the other? `remap_key` moves the data of the
            -- first keybind to the second keybind, then unbinds the first keybind.
            -- keybinds.remap_key("norg", "n", "<C-Space>", "<Leader>m")

            -- keybinds.remap_event("norg", "n", leader .. "nu", "core.qol.todo_items.todo.task_undone")
            -- keybinds.remap_event("norg", "n", leader .. "nd", "core.qol.todo_items.todo.task_undone")
            -- keybinds.remap_event("norg", "n", "np", "core.qol.todo_items.todo.task_pending")
            -- keybinds.remap_event("norg", "n", "nh", "core.qol.todo_items.todo.task_on_hold")
            -- keybinds.remap_event("norg", "n", "nc", "core.qol.todo_items.todo.task_cancelled")
            -- leader .. "tu", "core.qol.todo_items.todo.task_undone", opts = { desc = "Mark as Undone" }
          end,
        },
      }, -- Adds default keybindings
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      }, -- Enables support for completion plugins
      ["core.journal"] = {}, -- Enables support for the journal module
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = "~/Documents/code/stote/neorg/notes",
            info = "~/Documents/code/store/neorg/info",
            learn = "~/Documents/code/store/neorg/learn",
            example = "~/Documents/code/store/neorg/example",
            cinfo = "~/Documents/code/store/mount/cinfo",
          },
        },
      },
    },
  },
  keys = { {
    "<leader>m",
    "<CMD>TSJToggle<CR>",
    desc = "Toggle Treesitter Join",
  } },
}
