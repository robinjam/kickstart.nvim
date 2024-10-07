local keys = {
  {
    '<leader>ha',
    function()
      require('harpoon'):list():add()
    end,
    desc = '[H]arpoon [a]dd',
  },
  {
    '<leader>hl',
    function()
      local harpoon = require 'harpoon'
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end,
    desc = '[H]arpoon [l]ist',
  },
}

for i = 0, 9 do
  table.insert(keys, {
    '<leader>' .. i,
    function()
      require('harpoon'):list():select(i)
    end,
    desc = 'Harpoon file [' .. i .. ']',
  })
end

return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('harpoon'):setup()
  end,
  keys = keys,
}
