syntax on
set nocompatible
"set guifont=Courier:h10
set guifont=Lucida\ Console:h9
set completeopt=longest,menuone,preview
set wildmode=longest:full " bash like filename completion
set wildmenu " show possible completions for filenames
set backspace=indent,eol,start
set hlsearch
set incsearch
set hidden
set noswapfile  " disable swapfiles
set nobackup    " don't create ~ files 
set ignorecase
set number
set smartcase
set scrolloff=1
set dictionary+=/usr/share/dict/words
set history=1000	" keep 1000 lines of command line history
set ruler		      " show the cursor position all the time
set showcmd
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent
set autowrite			" Automatically save before commands like :next and :make
set vb            " visual beep
set nowrap
set guioptions-=T
set guioptions-=m
set runtimepath+=c:/Users/attila.strba/vimfiles/
set tags=./tags;  " search for tags file in the current file's directory and up to the root
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags() 

set background=dark
colorscheme solarized

"colorscheme vividchalk


if !empty($CONEMUBUILD)
    set term=ansi
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
    set bs=indent,eol,start
    colorscheme solarized
endif



function! b:close_diff()
  call feedkeys("\<C-w>h")
  execute 'diffoff!'
  execute 'bd'
  call feedkeys("\<C-w>k")
endfunction

set term=xterm
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
let g:solarized_underline=0

map \d :execute 'NERDTreeToggle ' . getcwd()<CR>
map \f :execute 'NERDTreeFind'<CR>
map \c :execute 'BD'<CR>
map \x :execute 'bd'<CR>
map \D :call b:close_diff()<CR> 
map <F1> :execute 'FufBuffer'<CR>
map <F2> :execute 'FufFile **/'<CR> 

let Tlist_Ctags_Cmd = "c:/tools/ctags58/ctags.exe"
let Tlist_WinWidth = 40
let Tlist_Show_One_File = 1
let Tlist_Compact_Format = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Highlight_Tag_On_BufEnter = 1
let Tlist_Use_Right_Window = 1
let Tlist_Inc_Winwidth = 0

map <F4> :TlistToggle<cr>

map <F8> :!c:/tools/ctags58/ctags.exe -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

let $PATH=$PATH.";c:/tools/Ruby193/bin"
"let $PATH=$PATH.";c:/tools/rubydevkit-tdm-32-4.5.2/mingw/bin"
"let $PATH=$PATH.";c:/Programme/Python27"

let g:DirDiffDynamicDiffText=1

autocmd BufNewFile,BufReadPost *.pgm set filetype=rtext
autocmd BufNewFile,BufReadPost *.atm set filetype=rtext
autocmd BufNewFile,BufReadPost *.atm4 set filetype=rtext
autocmd BufNewFile,BufReadPost *.fbm set filetype=rtext
autocmd BufNewFile,BufReadPost *.sta set filetype=rtext
autocmd BufNewFile,BufReadPost *.atm40 set filetype=rtext
autocmd BufNewFile,BufReadPost *.ect set filetype=rtext
autocmd BufNewFile,BufReadPost *.tpl set filetype=eruby
autocmd BufNewFile,BufReadPost *.rb,*.tpl setlocal omnifunc=g:MMComplete
autocmd BufRead,BufNewFile     *.wiki set filetype=mediawiki
