set noswapfile
set background=dark                                                                                 
set laststatus=2                                                                                    
set belloff=all                                                                                     
set tabstop=2 softtabstop=2                                                                         
set shiftwidth=2                                                                                    
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
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'https://github.com/vim-airline/vim-airline' "statusbar
Plug 'nvim-lua/plenary.nvim'
Plug 'https://github.com/dmerejkowsky/vim-ale'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'yuezk/vim-js' "jsx highlightining
Plug 'maxmellon/vim-jsx-pretty'
Plug 'https://github.com/preservim/nerdtree' "nerdterr
Plug 'https://github.com/ap/vim-css-color' "css color
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
Plug 'tribela/vim-transparent'
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
nnoremap <leader><leader>c :call nerdcomment(0,"toggle")<cr>                                        
nnoremap <leader><leader>c :call nerdcomment(0,"toggle")<cr>                                        
nnoremap <leader><tab> :bnext<cr>                                                                   
nnoremap <leader><tab><tab> :bprevious<cr>



let g:airline_powerline_fonts = 1
let g:nerdtreedirarrowexpandable="+"
let g:nerdtreedirarrowcollapsiblee="-"

:colorscheme sonokai

let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" --------------------------------------------------------
" settings start
"
set completeopt=longest,menuone

" settings end
" --------------------------------------------------------

" --------------------------------------------------------
" coc-vim tab settings start

" use tab for trigger completion with characters ahead and navigate.
" note: use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <tab>
      \ pumvisible() ? "\<c-n>" :
      \ <sid>check_back_space() ? "\<tab>" :
      \ coc#refresh()
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<c-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

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

