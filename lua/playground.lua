local vim = vim
local M = {}

function M.setup()
  vim.cmd [[command! -range=% -bang GoPlayground lua require'playground/share'.play(<line1>, <line2>, false)]]
  vim.cmd [[command! -range=% -bang Go2GoPlayground lua require'playground/share'.play(<line1>, <line2>, true)]]
end

return M
