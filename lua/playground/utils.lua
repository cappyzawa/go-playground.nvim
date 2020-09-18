local vim = vim
local system = vim.fn.system

local M = {
  browser = function ()
    local cmd_map = {
      Darwin = "open",
      Linux = "open",
    }
    local uname = string.gsub(system("uname"), "\n", "")
    for k, cmd in pairs(cmd_map) do
      if uname == k then return cmd end
      error(string.format("%s is not supported", uname))
    end
  end
}

return M
