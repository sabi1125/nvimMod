set noswapfile
set background=dark                                                                                 
set laststatus=2                                                                                    
set belloff=all                                                                                     
set tabstop=4 
set shiftwidth=4                                                                                   
set smartindent                                                                                     
set nu                                                                                              
set nowrap                                                                                          
set nobackup                                                                                        
set undodir=~/.vim/undordir                                                                         
set undofile                                                                                        
set incsearch                                                                                       
set relativenumber                                                                                  
set cursorline     
set mouse=a
set expandtab
" plugins

call plug#begin()
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
Plug 'sainnhe/everforest'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'AhmedAbdulrahman/vim-aylin'
Plug 'https://github.com/vim-airline/vim-airline' "statusbar
Plug 'nvim-lua/plenary.nvim'
Plug 'https://github.com/dmerejkowsky/vim-ale'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'yuezk/vim-js' "jsx highlightining
Plug 'maxmellon/vim-jsx-pretty'
Plug 'https://github.com/preservim/nerdtree' "nerdterr
Plug 'https://github.com/rafi/awesome-vim-colorschemes' "color schemes
Plug 'ryanoasis/vim-devicons' "vim icons
Plug 'https://github.com/terryma/vim-multiple-cursors' "multiple cursors
Plug 'https://github.com/tpope/vim-commentary' "vim commentacolorschemery
Plug 'https://github.com/preservim/tagbar' "tag
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/junegunn/fzf' " fuzzy
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                                                                                                                                                                                                                         
Plug 'junegunn/fzf.vim' "fuzzy finder
Plug 'https://github.com/prettier/vim-prettier' "pritter
Plug 'https://github.com/jiangmiao/auto-pairs' " auto brackets
Plug 'https://github.com/sindrets/diffview.nvim' " gitdiff
Plug 'https://github.com/tpope/vim-fugitive' " git fugitive
Plug 'https://github.com/kkvh/vim-docker-tools'
Plug 'vimwiki/vimwiki' " vimwiki
plug 'tribela/vim-transparent'
plug 'hachy/eva01.vim', { 'branch': 'main' }
call plug#end()





let mapleader = " "
let mapleader = " "                                                                                 
" maps                                                                                              
nmap <leader>hk :vsplit ~/.vim/hotkeys<cr>                                                          
nmap <leader>gd <plug>(coc-definition)                                                              
nmap <leader>gr <plug>(coc-references)                                                              
nmap <leader><leader>t :NERDTree<cr>
nmap <leader>t :NERDTreeToggle<cr>
nmap <leader>r :NERDTreeFocus<cr>
nmap <leader><leader>p :prettier<cr>                                                                
"new tab
nmap <leader>f :tabe<cr>
nmap <leader><leader>g :gofmt<cr>                                                                   
nmap <leader><leader>b :black<cr>                                                                   
nmap <leader><leader>u :undotreetoggle<cr>                                                          
" files (runs $fzf_default_command if defined)                                                      
nmap <leader><leader>f :Files<cr>                                                                   
nmap <leader><leader><leader>g :gometalinter<cr>  
nmap <f8> :tagbartoggle<cr>
nmap <c-s> :w<cr>
nmap <leader>q :tabprevious<cr>
nmap <leader>e :tabnext<cr>
nnoremap <leader><tab> :bnext<cr>                                                                   
nnoremap <leader><tab><tab> :bprevious<cr>


let g:airline_powerline_fonts = 1
let g:nerdtreedirarrowexpandable="+"
let g:nerdtreedirarrowcollapsiblee="-"
    if has('termguicolors')
      set termguicolors
    endif
    set background=dark

    let g:everforest_background = 'hard'
    let g:everforest_better_performance = 1

    colorscheme everforest
    let g:lightline = {'colorscheme' : 'everforest'}



:colorscheme everforest 



let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" --------------------------------------------------------
" settings start
"
set completeopt=longest,menuone

" settings end
" --------------------------------------------------------

" --------------------------------------------------------
" coc-vim tab settings start
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" use <cr> to confirm completion, `<c-g>u` means break undo chain at current
" position. coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <cr>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<c-y>" : "\<c-g>u\<cr>"
else
  inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
endif


" coc-vim tab settings end
" --------------------------------------------------------
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" blankline (indent's)

lua << EOF
vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "tab:⋅"
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}
EOF
