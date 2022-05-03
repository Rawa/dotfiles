local m = require("utils")

return {
  setup = function()
    m.nmap("<leader>n", ":NERDTreeFind<CR>")
    m.nmap("<leader>m", ":NERDTreeToggle<CR>")

    vim.g.NERDTreeRespectWildIgnore=1
    --vim.g.NERDTreeShowHidden=1
  end
}
