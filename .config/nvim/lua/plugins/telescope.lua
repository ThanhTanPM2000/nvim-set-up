return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    local actions = require("telescope.actions")

    -- Ensure the default mappings table exists
    opts.defaults = opts.defaults or {}
    opts.defaults.mappings = opts.defaults.mappings or {}
    opts.defaults.mappings.i = opts.defaults.mappings.i or {}

    -- Merge your custom mappings with the existing ones
    opts.defaults.mappings.i = vim.tbl_extend("force", opts.defaults.mappings.i, {
      ["<C-k>"] = actions.move_selection_previous, -- move to prev result
      ["<C-j>"] = actions.move_selection_next, -- move to next result
    })

    return opts
  end,
}
