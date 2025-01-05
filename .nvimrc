version 6.0
let s:cpo_save=&cpo
set cpo&vim
cnoremap <expr> <Down> wilder#can_accept_completion()  ?  wilder#accept_completion()  :  '<Down>'
cnoremap <expr> <Up> wilder#can_reject_completion()  ?  wilder#reject_completion()  :  '<Up>'
cnoremap <expr> <S-Tab> wilder#in_context()  ?  wilder#previous()  :  '<S-Tab>'
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
inoremap <C-W> u
inoremap <C-U> u
nnoremap  <Cmd>nohlsearch|diffupdate|normal! 
nnoremap  :Neotree close
nnoremap  :Neotree filesystem reveal left
nmap  d
nnoremap  gt :Gitsigns toggle_current_line_blame
nnoremap  gph :Gitsigns preview_hunk
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
xnoremap <silent> <expr> @ mode() == 'V' ? ':normal! @'.getcharstr().'' : '@'
xnoremap <silent> <expr> Q mode() == 'V' ? ':normal! @=reg_recorded()' : 'Q'
xmap S <Plug>VSurround
nnoremap Y y$
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
xmap gS <Plug>VgSurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <C-M> :Neotree close
nnoremap <C-N> :Neotree filesystem reveal left
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
nnoremap <silent> <Plug>SurroundRepeat .
vnoremap <silent> <M-k> :m '<-2gv=gv
vnoremap <silent> <M-j> :m '>+1gv=gv
nnoremap <silent> <M-k> :m .-2==
nnoremap <silent> <M-j> :m .+1==
nmap <C-W><C-D> d
nnoremap <C-L> <Cmd>nohlsearch|diffupdate|normal! 
imap S <Plug>ISurround
imap s <Plug>Isurround
cnoremap <expr> 	 wilder#in_context()  ?  wilder#next()  :  '	'
imap  <Plug>Isurround
inoremap  u
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set expandtab
set grepformat=%f:%l:%c:%m
set grepprg=rg\ --vimgrep\ -uu\ 
set helplang=hu
set noloadplugins
set packpath=C:\\Program\ Files\\Neovim\\share/nvim/runtime
set runtimepath=~\\AppData\\Local\\nvim,~\\AppData\\Local\\nvim-data\\lazy\\lazy.nvim,~/AppData/Local/nvim-data/lazy/guihua.lua,~\\AppData\\Local\\nvim-data\\lazy\\go.nvim,~\\AppData\\Local\\nvim-data\\lazy\\telescope-ui-select.nvim,~\\AppData\\Local\\nvim-data\\lazy\\auto-session,~\\AppData\\Local\\nvim-data\\lazy\\vim-fugitive,~\\AppData\\Local\\nvim-data\\lazy\\yaml.nvim,~\\AppData\\Local\\nvim-data\\lazy\\lualine.nvim,~\\AppData\\Local\\nvim-data\\lazy\\alpha-nvim,~\\AppData\\Local\\nvim-data\\lazy\\nui.nvim,~\\AppData\\Local\\nvim-data\\lazy\\neo-tree.nvim,~\\AppData\\Local\\nvim-data\\lazy\\none-ls.nvim,~\\AppData\\Local\\nvim-data\\lazy\\nvim-treesitter,~\\AppData\\Local\\nvim-data\\lazy\\nerdfont.vim,~\\AppData\\Local\\nvim-data\\lazy\\nvim-web-devicons,~\\AppData\\Local\\nvim-data\\lazy\\cpsm,~\\AppData\\Local\\nvim-data\\lazy\\fd,~\\AppData\\Local\\nvim-data\\lazy\\fzy-lua-native,~\\AppData\\Local\\nvim-data\\lazy\\nvim-yarp,~\\AppData\\Local\\nvim-data\\lazy\\wilder.nvim,~\\AppData\\Local\\nvim-data\\lazy\\cmp-nvim-lsp,~\\AppData\\Local\\nvim-data\\lazy\\nvim-lspconfig,~\\AppData\\Local\\nvim-data\\lazy\\mason-lspconfig.nvim,~\\AppData\\Local\\nvim-data\\lazy\\mason.nvim,~\\AppData\\Local\\nvim-data\\lazy\\friendly-snippets,~\\AppData\\Local\\nvim-data\\lazy\\cmp_luasnip,~\\AppData\\Local\\nvim-data\\lazy\\LuaSnip,~\\AppData\\Local\\nvim-data\\lazy\\nvim-cmp,~\\AppData\\Local\\nvim-data\\lazy\\plenary.nvim,~\\AppData\\Local\\nvim-data\\lazy\\telescope.nvim,~\\AppData\\Local\\nvim-data\\lazy\\nvim-dap-go,~\\AppData\\Local\\nvim-data\\lazy\\nvim-nio,~\\AppData\\Local\\nvim-data\\lazy\\nvim-dap-ui,~\\AppData\\Local\\nvim-data\\lazy\\nvim-dap,~\\AppData\\Local\\nvim-data\\lazy\\gitsigns.nvim,~\\AppData\\Local\\nvim-data\\lazy\\vim-surround,~\\AppData\\Local\\nvim-data\\lazy\\catppuccin,C:\\Program\ Files\\Neovim\\share\\nvim\\runtime,C:\\Program\ Files\\Neovim\\share\\nvim\\runtime\\pack\\dist\\opt\\matchit,C:\\Program\ Files\\Neovim\\lib\\nvim,~\\AppData\\Local\\nvim-data\\lazy\\readme,~\\AppData\\Local\\nvim-data\\lazy\\go.nvim\\after,~\\AppData\\Local\\nvim-data\\lazy\\cmp-nvim-lsp\\after,~\\AppData\\Local\\nvim-data\\lazy\\cmp_luasnip\\after,~\\AppData\\Local\\nvim-data\\lazy\\catppuccin\\after
set shiftwidth=2
set softtabstop=2
set statusline=%#Normal#
set noswapfile
set tabstop=2
set termguicolors
set wildcharm=<Tab>
set wildmode=longest,list
set window=69
tnoremap <ESC> <C-\><C-n>
" vim: set ft=vim :
