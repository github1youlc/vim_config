set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
""Bundle 'Rip-Rip/clang_complete'
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'


" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
Bundle 'taglist.vim'
"Bundle 'project.vim'

" non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'

filetype plugin indent on     " required!

" ycm configuration
nnoremap <leader>c<Esc> :YcmCompleter GotoDeclaration<CR>
nnoremap <leader>f<Esc> :YcmCompleter GoToDefinition<CR>
nnoremap <leader>g<Esc> :YcmCompleter GoToDefinitionElseDeclaration<CR>
" let g:ycm_extra_conf_globlist = '/home/youlc/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_extra_conf_globlist='/home/youlc/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
nnoremap <F4> :YcmDiags<CR>

" let g:clang_library_path = '/home/youlc/.vim/bundle/YouCompleteMe/python/'
let g:clang_complete_auto = 1
let g:clang_complete_copen = 1

" nerd tree config
let NERDTreeWinPos = 'left'
map <silent> <F8> :NERDTree<CR>

" taglist config
map <silent> <F9> :TlistToggle<CR>
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Exit_OnlyWindow = 1
let Tlist_Auto_Open = 1
let Tlist_Use_Right_Window = 1

" general configuration
set nu
set cindent
set noexpandtab
set shiftwidth=4
set tabstop=4

nnoremap <leader>l<Esc> :so $MYVIMRC<CR>


" auto complete {} "" [] () ''
inoremap { {<CR>}<ESC>kA<CR>
inoremap " ""<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap ' ''<Esc>i
""inoremap < <><Esc>i

