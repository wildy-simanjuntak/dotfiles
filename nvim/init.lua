-- Tambah lazy.nvim ke runtime path
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")
vim.opt.number = true
vim.opt.relativenumber = true

-- Inisialisasi Lazy dan daftar plugin
require("lazy").setup({
  -- contoh plugin
  {
    "nvim-tree/nvim-tree.lua",                -- file explorer kayak VSCode
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup()
    end,
  },

  {
    "akinsho/bufferline.nvim",                -- tab file kayak VSCode
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("bufferline").setup({
        options = {
          separator_style = "slant",
        },
      })
    end,
  },
})

