require("mgh.remap")
require("mgh.packer")
require("mgh.set")
require("mgh.dap_adapters.go")
require("mgh.dap")

vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  command = "Copilot disable"
})

-- Server mode for godot

-- paths to check for project.godot file
local paths_to_check = {'/', '/../'}
local is_godot_project = false
local godot_project_path = ''
local cwd = vim.fn.getcwd()

-- iterate over paths and check
for key, value in pairs(paths_to_check) do
    if vim.uv.fs_stat(cwd .. value .. 'project.godot') then
        is_godot_project = true
        godot_project_path = cwd .. value
        break
    end
end

-- check if server is already running in godot project path
local is_server_running = vim.uv.fs_stat(godot_project_path .. '/server.pipe')
-- start server, if not already running
if is_godot_project and not is_server_running then
    vim.fn.serverstart(godot_project_path .. '/server.pipe')
end

-- Enable GDScript LSP (Neovim 0.11+)
if is_godot_project then
    vim.lsp.enable('gdscript')

    -- Breakpoint commands for Godot debugging
    vim.api.nvim_create_user_command('GodotBreakpoint', function()
        vim.cmd('normal! obreakpoint')
        vim.cmd('write')
    end, {})
    vim.keymap.set('n', '<leader>b', ':GodotBreakpoint<CR>')

    vim.api.nvim_create_user_command('GodotDeleteBreakpoints', function()
        vim.cmd('g/breakpoint/d')
    end, {})
    vim.keymap.set('n', '<leader>BD', ':GodotDeleteBreakpoints<CR>')

    vim.api.nvim_create_user_command('GodotFindBreakpoints', function()
        vim.cmd(':grep breakpoint | copen')
    end, {})
    vim.keymap.set('n', '<leader>BF', ':GodotFindBreakpoints<CR>')
end

