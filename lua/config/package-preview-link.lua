local M = {}

function M.show_preview_link()
  local package_file = vim.fn.getcwd() .. "/package.json"
  if vim.fn.filereadable(package_file) == 0 then
    vim.notify("No package.json found in the current directory.", vim.log.levels.ERROR)
    return
  end

  local package_json = vim.fn.readfile(package_file)
  local content = vim.fn.json_decode(table.concat(package_json, "\n"))

  if content.homepage then
    vim.notify("Preview Link: " .. content.homepage, vim.log.levels.INFO)
    vim.fn.setreg("+", content.homepage) -- Copies to the clipboard
  else
    vim.notify("No homepage field found in package.json.", vim.log.levels.WARN)
  end
end

function M.show_git_remote()
  local handle = io.popen("git config --get remote.origin.url 2>/dev/null")
  local result = handle:read("*a"):gsub("%s+", "")
  handle:close()

  if result == "" then
    vim.notify("No Git remote URL found.", vim.log.levels.ERROR)
  else
    vim.notify("Git Remote: " .. result, vim.log.levels.INFO)
    vim.fn.setreg("+", result) -- Copies to the clipboard
  end
end

return M
