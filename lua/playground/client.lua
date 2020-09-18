local vim = vim
local system = vim.fn.system

local http_method = {
  POST = "POST"
}

local client = {
  post = function (url, body)
    local command = string.format("curl -sX %s %s -d 'body=%s'", http_method.POST, url, body)
    return system(command)
  end
}

return client
