local vim = vim
local system = vim.fn.system
local client = require'playground/client'
local utils = require'playground/utils'
local play_golang_url = "https://play.golang.org"
local gotipplay_golang_url = "https://gotipplay.golang.org"

local M = {}

function M.play (s, e, gotip)
  local browser_cmd = utils.browser()

  local bufnr = vim.api.nvim_get_current_buf()
  local url = play_golang_url
  if gotip then url = gotipplay_golang_url end
  local share_url = string.format("%s/share", url)
  local body = table.concat(vim.api.nvim_buf_get_lines(bufnr, s-1, e, true), "\n")
  local out = client.post(share_url, body)
  if vim.api.nvim_get_vvar("shell_error") == 0 then
    local shared_url = string.format("%s/p/%s", url, out)
    print(shared_url)
    system(string.format("%s %s", browser_cmd, shared_url))
  else
    error(out)
  end
end

return M
