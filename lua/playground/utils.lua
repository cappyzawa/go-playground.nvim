local vim = vim
local system = vim.fn.system

local M = {
  browser = function ()
    local cmd_map = {
      Darwin = "open",
      Linux = "open",
    }
    local uname = string.gsub(system("uname"), "\n", "")
    local supported = false
    for k, cmd in pairs(cmd_map) do
      if uname == k then
        supported = true
        return cmd
      end
    end
    if not(supported) then
      error(string.format("%s is not supported", uname))
    end
  end
}

return M
