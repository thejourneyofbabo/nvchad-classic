require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
-- ## Jisang Setup ## --

-- Nvim DAP Mappings
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map(
  "n",
  "<Leader>dd",
  "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
  { desc = "Debugger set conditional breakpoint" }
)
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

-- Rust-specific Mappings
map("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })
map("n", "<Leader>k", function()
  vim.cmd.RustLsp { "hover", "actions" }
end, { desc = "Rust hover actions" })
map("n", "<Leader>dg", "<cmd>RustLsp debuggables<CR>", { desc = "List available debug targets" })
map("n", "<Leader>dr", "<cmd>RustLsp debug<CR>", { desc = "Start debugging" })
map("n", "<Leader>rr", "<cmd>RustLsp runnables<CR>", { desc = "List runnable targets" })
map("n", "<Leader>rc", "<cmd>RustLsp run<CR>", { desc = "Run current target" })
map("n", "<Leader>tt", "<cmd>RustLsp testables<CR>", { desc = "List testable targets" })
map("n", "<Leader>ca", "<cmd>RustLsp codeAction<CR>", { desc = "Show code actions" })
map("n", "<Leader>em", "<cmd>RustLsp expandMacro<CR>", { desc = "Expand macro recursively" })
map("n", "<Leader>mu", "<cmd>RustLsp moveItem up<CR>", { desc = "Move item up" })
map("n", "<Leader>md", "<cmd>RustLsp moveItem down<CR>", { desc = "Move item down" })
map("n", "<Leader>ee", "<cmd>RustLsp explainError<CR>", { desc = "Explain error" })
map("n", "<Leader>od", "<cmd>RustLsp openDocs<CR>", { desc = "Open docs.rs documentation" })
map("n", "<Leader>pm", "<cmd>RustLsp parentModule<CR>", { desc = "Go to parent module" })
map("n", "<Leader>ws", "<cmd>RustLsp workspaceSymbol<CR>", { desc = "Search workspace symbols" })
map("n", "<Leader>jl", "<cmd>RustLsp joinLines<CR>", { desc = "Join lines" })
map("n", "<Leader>sr", "<cmd>RustLsp ssr<CR>", { desc = "Structural search replace" })
map("n", "<Leader>vg", "<cmd>RustLsp crateGraph<CR>", { desc = "View crate graph" })
map("n", "<Leader>vs", "<cmd>RustLsp syntaxTree<CR>", { desc = "View syntax tree" })
map("n", "<Leader>vh", "<cmd>RustLsp view hir<CR>", { desc = "View HIR" })
map("n", "<Leader>vm", "<cmd>RustLsp view mir<CR>", { desc = "View MIR" })
map("n", "<Leader>fc", "<cmd>RustLsp flyCheck run<CR>", { desc = "Run fly check" })

-- Window Navigation
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", { desc = "Window left" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", { desc = "Window right" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", { desc = "Window down" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", { desc = "Window up" })

-- LSP Mappings
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "LSP definition" })
map("n", "gdv", "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", { desc = "LSP definition (vertical split)" })
map(
  "n",
  "gdh",
  "<cmd>belowright split | lua vim.lsp.buf.definition()<CR>",
  { desc = "LSP definition (horizontal split)" }
)

-- Cursor Movement
map("n", "<leader>lj", "10jzz", { desc = "Move cursor up by 10 lines" })
map("n", "<leader>lk", "10kzz", { desc = "Move cursor down by 10 lines" })


-- ## Jisang Setup End ## --
