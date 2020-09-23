local vim = vim
local M = {}

function M.setup()
  vim.cmd [[command! -range=% -bang GoPlayground lua require'playground/share'.share(<line1>, <line2>)]]
end

return M
