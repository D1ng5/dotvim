" Generated confing
" Pathogen
"call pathogen#runtime_append_all_bundles()
call pathogen#incubate()
call pathogen#helptags()

"version 6.0
"if &cp | set nocp | endif
"let s:cpo_save=&cpo
"set cpo&vim
"nmap gx <Plug>NetrwBrowseX
"nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
"let &cpo=s:cpo_save
"unlet s:cpo_save
"set backspace=indent,eol,start
set history=50
set ruler
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc


" My Vim config
set backupdir=$HOME/.vim/vimtmp//
set directory=$HOME/.vim/vimviewdir//

au BufWritePost,BufLeave,WinLeave ?* mkview
au BufReadPre ?* silent loadview



"let g:sekipview files = [
            "\ '[EXAMPLE PLUGIN BUFFER]'
"            \ ]
"function! MakeViewCheck()
"    if has('quickfix') && &buftype =~ 'nofile'
"        Buffer is marked as not a file
"        return 0
"    endif
"    if empty(glob(expand('%:p')))
"        " File does not exist on disk
"        return 0
"    endif
"    if len($TEMP) && expand('%:p:h') == $TEMP
"        " We're        in a     temp dir
"        return 0
"    endif
"    if len($TMP) && expand('%:p:h') == $TMP
"        "        Also        in        temp        dir
"        return 0
"    endif
"    if index(g:skipview_files,expand('%')) >= 0
"        "        File        is        in        skip        list
"        return 0
"    endif
"    return 1
"endfunction
"
"augroup vimrcAutoView
"    autocmd!
"    "    Autosave    &    Load    Views.
"    autocmd BufWritePost,BufLeave,WinLeave ?* if MakeViewCheck() | mkview | endif
"    autocmd BufWinEnter ?* if MakeViewCheck() | silent loadview | endif
"augroup end

set nocompatible " Disable vi-compatibilityi

set background=dark

set smartindent
set tabstop=4 "tabulator =4*' '
set shiftwidth=4
set softtabstop=4
set expandtab

" vim: set ft=vim :
set number "enable linenumbers
syntax on
filetype plugin indent on


" Folding settings
set foldmethod=manual
set foldnestmax=10
set nofoldenable
set foldlevel=1
set viewdir=$HOME/.vim/vimviewdir//


" Plugins
" Pathogen
call pathogen#infect()


" Powerline
set laststatus=2 
set t_Co=256
set encoding=utf-8


" Nerdtree
map <C-n> :NERDTreeToggle<CR>



