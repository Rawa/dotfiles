local map = function (mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local imap = function (lhs, rhs, opts)
  map("i", lhs, rhs, opts)
end

local nmap = function (lhs, rhs, opts)
  map("n", lhs, rhs, opts)
end

return {
  map = map,
  imap = imap,
  nmap = nmap
}
