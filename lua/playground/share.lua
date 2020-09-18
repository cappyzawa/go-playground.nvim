local vim = vim
local system = vim.fn.system
local client = require'playground/client'
local playground_url = "https://play.golang.org"

local M = {
  share = function (s, e)
    local platform = string.gsub(system("uname"), "\n", "")
    if not (platform == "Darwin" or platform == "Linux") then
      error(string.format("os: %s is not supported", platform))
      return
    end

    local bufnr = vim.api.nvim_get_current_buf()
    local url = string.format("%s/share", playground_url)
    local body = table.concat(vim.api.nvim_buf_get_lines(bufnr, s, e, true), "\n")
    local out = client.post(url, body)
    if vim.api.nvim_get_vvar("shell_error") == 0 then
      local shared_url = string.format("%s/p/%s", playground_url, out)
      print(shared_url)
      system("open " .. shared_url)
    else
      error(out)
    end
  end
}

return M
