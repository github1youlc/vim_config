set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" ------------------- My bundles here: -----------------------
" original repos on GitHub
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
""Bundle 'Rip-Rip/clang_complete'
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
Bundle 'bling/vim-airline'
Bundle 'asins/vim-dict'


" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'project.vim'
Bundle 'taglist.vim'
Bundle 'AutoComplPop'
Bundle 'jellybeans.vim'
Bundle 'vividchalk.vim'
Bundle 'CmdlineComplete'
Bundle 'kien/ctrlp.vim'


" non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'

filetype plugin indent on     " required!

" -------------------- ycm configurationi ----------------------
nnoremap <leader>c<Esc> :YcmCompleter GotoDeclaration<CR>
nnoremap <leader>f<Esc> :YcmCompleter GoToDefinition<CR>
nnoremap <leader>g<Esc> :YcmCompleter GoToDefinitionElseDeclaration<CR>
" let g:ycm_extra_conf_globlist = '/home/youlc/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_extra_conf_globlist='/home/youlc/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
nnoremap <F4> :YcmDiags<CR>

" --------------------- clang_complete -------------------
" let g:clang_library_path = '/home/youlc/.vim/bundle/YouCompleteMe/python/'
let g:clang_complete_auto = 1
let g:clang_complete_copen = 1

" ------------------ nerd tree config ---------------------
let NERDTreeWinPos = 'left'
map <silent> <F8> :NERDTree<CR>

" ------------------ taglist config ---------------------
map <silent> <F9> :TlistToggle<CR>
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Exit_OnlyWindow = 1
let Tlist_Auto_Open = 1
let Tlist_Use_Right_Window = 1

" ------------------- general configuration --------------------
set nu
set cindent
set noexpandtab
set shiftwidth=4
set tabstop=4

nnoremap <leader>l<Esc> :so $MYVIMRC<CR>


" auto complete {} "" [] () ''
inoremap { {<CR>}<ESC>kA<CR>
" inoremap " ""<Esc>i
" inoremap ( ()<Esc>i
" inoremap [ []<Esc>i
" inoremap ' ''<Esc>i
" inoremap < <><Esc>i

nnoremap <F7> :make<CR>

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

nmap <C-.> :bn<CR>
nmap <C-,> :nN<CR>

set encoding=utf-8
set fileencodings=gbk,utf-8,gb18030,utf-16,big5
set termencoding=gbk

" 不添加新的注释行
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_section_c='%F'
let g:airline_inactive_collapse=0

set t_Co=256
set laststatus=2

colorscheme jellybeans
let g:jellybeans_use_lowcolor_black = 1

let s:vimfile = '/home/users/youlingcong/.vim/'
autocmd filetype * let &l:dict=s:vimfile.'bundle/vim-dict/dict/'.&ft.'.dict'
autocmd filetype smarty let &l:dict=s:vimfile.'bundle/vim-dict/dict/smarty.dict,'.s:vimfile.'bundle/vim-dict/dict/javascript.dict,'.s:vimfile.'bundle/vim-dict/dict/php.dict'

" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*py~     " MacOSX/Linux
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
" let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows

let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_working_path_mode = 'rwa'
let g:ctrlp_open_new_file = 'h'
let g:ctrlp_max_files = 0
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_regexp = 1



