" To have all the features of vim
" What features??? I don't know...
set nocompatible

" TO have a fixed tab for indenetation
set softtabstop=2
set shiftwidth=2
set expandtab

" To Set width of a line
set textwidth=78

" To Indent properly
set autoindent
set smartindent

" Show line numbers
set number

" report number of lines changed
set report=0

" To highlight current line
set cursorline

" Highlight certain columns
set colorcolumn=79

" To highlighting matching [{()}]
set showmatch

" To ignore case while searching
set ignorecase

" To use case if any caps are used
set smartcase

" To seatch as chars are added
set incsearch

" To highlight matches
set hlsearch

" Always show the status line.
set laststatus=2

" Enable extended regexp
set magic

" Hide mousepointer while typing.
set mousehide

" Keep the cursor on the same column.
set nostartofline

" To show incomplete commands
" found it in vimrc referred in vimtutor
set showcmd

" Show current mode
set showmode

" To show some stats at the bottom-right
set ruler

set background=dark

" Five lines above and below the cursor are always visible, except at the EOF
set scrolloff=5

" Opp: set nowrapscan(not default) while searching for strings...
set wrapscan

" To complete words
" https://www.cs.oberlin.edu/~kuperman/help/vim/completion.html
set dictionary=/home/ssriram/dict/words

" Setting Backspace option, people say its useful
" Will try and see
" https://stackoverflow.com/questions/11560201/backspace-key-not-working-in-vim-vi
" http://vimhelp.appspot.com/options.txt.html#%27backspace%27
set backspace=indent
set backspace+=eol
set backspace+=start

" To enable Syntax highlighting
" Shouldn't use syntax on as it mese with colors
" refer: https://goo.gl/4JZFz8
syntax enable

filetype indent on

"On Error: Change mycolors to morning
colorscheme sea
if &diff
	colorscheme github
	"colorsceme molokai
endif
" For  listing abbreviations in multi line/column list
set wildmode=longest,list,full

" Create ~/.vim/abbreviations.vim and put in your abbreviations into this file
" .Abbreviations MIG.
silent! :execute 'source ~/.vim/abbreviations.vim'

" Create a folder .vim/templates in your home directory.
" And place the template file for any file_type in it.
" Save the file as <file_type_extension>.vim
" And abbreviations related to the filetype in <file_type>.patterns.vim
" Eg: for 'C++' files -> cpp.vim & cpp.patterns.vim, for 'PERL' files ->
" pl.vim & pl.patterns.vim
" So each time you open a new file of that particular filetype, the contents
" of <filetype>.vim are in it.
" And the corresponding abbreviations are also loaded into it (not only for new
" file).

autocmd BufNewFile * silent! or ~/.vim/templates/%:e.vim

silent! :execute 'source ~/.vim/templates/%e','.patterns.vim'
" incase above line doesn't work use below line
" source ~/.vim/template/%:e.patterns.vim

"------ backing up stuff --------------
" To backup
set backup 
set noswapfile
set undofile
set undodir=~/.vim/temp/undo/    " undo files
set backupdir=~/.vim/temp/backup/    " backups
set directory=~/.vim/temp/swap/   " swap files

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

"=== Code folding ===
"https://unix.stackexchange.com/questions/141097/how-to-enable-and-use-code-folding-in-vim
" http://vimhelp.appspot.com/options.txt.html#%27foldmethod%27
set foldmethod=indent

" http://vimhelp.appspot.com/options.txt.html#%27foldenable%27
set nofoldenable

" To not fold single-level
set foldlevel=2

"========= All keys related stuff ==========

" To allow mouse-clicks to set cursor
"set mouse=a

"map ^K ^i#^[j
"set makeprg=CC\ %
"set makeprg=perl\ -c\ %

" press F2 in any mode to save and come to normal mode
"map <silent> <F2> :w<CR>
"imap <silent> <F2> <Esc>:w<CR>

" press F3 in any mode to quit without saving
"map <silent> <F3> :q!<CR>
"imap <silent> <F3> <Esc>:q!<CR.

" press F5 to insert date (do not append this line to next line)
"map <F5> a <C-R>=strftime("%c")<CR><Esc>
"imap <f5> <C-R>=strftime("%c")<CR><Esc>

" use paste mode instad of insert mode whiole pasting copied content.
" This will prevent abbreviations in pasted content form expanding, which is
" undesirable
"set pastetoggle=<F6>

" press F7 to display/hide line-numbers, useful while copying text using
" mouse.
"map <F7> :set invnumber<CR>
"imap <F7> <Esc>: set invnumber<CR>a

"ctrl-x will also work in insert mode.
"map ^X i^X

" To map double escape to remove highlighted parts from search.
" understand what 'nmap', 'nnoremap' and other means.
" useful link: https://goo.gl/QiiP44
"nmap <esc><esc> :noh<return>

" To have undo feature with <c-u> and <c-w> in insert mode
" http://vim.wikia.com/wiki/Recover_from_accidental_Ctrl-U
"inoremap <c-u> <c-g>u<c-u>
"inoremap <c-w> <c-g>u<c-w>

" To use F1 to save in insert mode. So that I don't have too do <Esc>:w and
" then insert again
"inoremap <F1> <c-o>:w<cr>

" <+'your comments'+> as place holder.
" Such that ctrl+j will jump to the place holder.
" used in conjuction with abbreviations.vim file, don't delete the following,
" if not sure what you are doing.
"nnoremap <c-j> /<+.*+><cr>c/+>/e<cr>
"nnoremap <c-j> <ESC>/<+.*+><cr>c/+>/e<cr>
