vim.api.nvim_create_user_command("Pwd", 'let @+=expand("%:p") | echo expand("%:p")', {})

local function myRepl(t)
  if t.range ~= 0 then
    vim.cmd "'<,'>s/null/nil/ge | '<,'>s/\\[/\\{/ge | '<,'>s/\\]/\\}/ge"
  else
    vim.cmd "%s/null/nil/ge | %s/\\[/\\{/ge | %s/\\]/\\}/ge"
  end
end
vim.api.nvim_create_user_command("MyRepl", function(t) myRepl(t) end, { range = true })

local function myReplQu(t)
  if t.range ~= 0 then
    vim.cmd "'<,'>s/\"/'/ge"
  else
    vim.cmd "%s/\"/'/ge"
  end
end
vim.api.nvim_create_user_command("MyReplQu", function(t) myReplQu(t) end, { range = true })

return {
  opt = {
    -- Использовать пробелы вместо табуляций
    expandtab = true,
    -- Количество пробелов в отступе
    shiftwidth = 2,
    -- Количество пробелов для табуляции (если expandtab установлен в false)
    tabstop = 2,
    -- Отображать специальные символы (табуляции, конец строки)
    list = true,
  },
  g = {
    -- Другие глобальные настройки
  },
}
