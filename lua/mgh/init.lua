require("mgh.remap")
require("mgh.packer")
require("mgh.set")
require("mgh.dap_adapters.go")
require("mgh.dap")

vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  command = "Copilot disable"
})

