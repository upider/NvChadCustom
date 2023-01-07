-- autocmds
local autocmd = vim.api.nvim_create_autocmd
local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", {
    clear = true,
})

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
    pattern = "*",
    command = "tabdo wincmd =",
})

-- nvim-tree 自动关闭
autocmd("BufEnter", {
    nested = true,
    group = myAutoGroup,
    callback = function()
        if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match "NvimTree_" ~= nil then
            vim.cmd "quit"
        end
    end,
})
-- 用o换行不要延续注释
vim.cmd [[augroup NoAutoComment
au!
au FileType * setlocal formatoptions-=cro
augroup end
]]
--定位到上次编译位置
vim.cmd [[autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif]]
-- 文件编码格式
vim.opt.fileencoding = "utf-8"
-- tab=4个空格
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.undofile=false
-- nvim-markdown-preview 配置
vim.g.mkdp_open_ip = "127.0.0.1"
vim.g.mkdp_echo_preview_url = 1
