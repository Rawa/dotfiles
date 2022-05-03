local m = require('utils')

return {
  setup = function ()
    m.nmap("<leader>ff", "<cmd>Telescope find_files<cr>")
    m.nmap("<leader>fg", "<cmd>Telescope live_grep<cr>")
    m.nmap("<leader>fb", "<cmd>Telescope buffers<cr>")
    m.nmap("<leader>fh", "<cmd>Telescope help_tags<cr>")
    m.nmap("<leader>fr", "<cmd>Telescope commands<cr>")
    m.nmap("<leader>fk", "<cmd>Telescope keymaps<cr>")
  end
}

