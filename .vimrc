
" My adds (Sorina)


" Mapping F5 to remove trailling whitespaces (form vim.wikia.com):
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

imap jj <Esc>
set cursorline
set number


" Created by MM
" Last updated: 3.5.11.15.01
" Add highlight search

" globals
set modeline
filetype indent on
syntax on
set mouse=a
set incsearch
set sm "showmatch
set ai "autoindent
set smartindent
set formatoptions+=r
set autowrite
set list listchars=tab:»\ ,trail:·,extends:»,precedes:« "whitespaces
set tw=79 "implicit textwidth
set hls "highlight search

au FileType c,cpp set cin tw=78 sw=4 sts=4 et
au FileType haskell set tw=78 sw=2 sts=2 et
au FileType python set ai sw=4 sts=4 et tw=78
au FileType matlab set sw=2 sts=2 noet
au FileType prolog set sw=8 sts=8 noet
"au FileType java set ai noet sw=2 sts=2 cin tw=78
au FileType java set cin tw=80
au FileType tex set ai et sw=2 sts=2 tw=78
"au FileType tex so ~/.vim/abbrevs.vim " from ddvlad - LaTeX mappings
" from ddvlad, ease filetype recognition
au BufRead,BufNewFile *.tex setlocal ft=tex
au FileType html set ai et sw=2 sts=2 tw=78
au FileType xml set ai et sw=2 sts=2 tw=78
au FileType sh set ai et sw=4 sts=4
au FileType v set ai et sw=4 sts=4 tw=78
au FileType vhdl set ai et sw=4 sts=4 tw=78

" from Alexandru MoÈ™oi via ddvlad
set statusline=%<%f\ %y%h%m%r%=%-24.(0x%02B,%l/%L,%c%V%)\ %P
set laststatus=2
set wildmenu

nnoremap <Tab> :cnext<Cr>
nnoremap <S-Tab> :cprev<Cr>
nnoremap <F9> :make<Cr>

" not needed anymore, haz plugin (Sorina)
" from Cosmin Ratiu via ddvlad
"if has("cscope")
"        " Look for a 'cscope.out' file starting from the current directory,
"        " going up to the root directory.
"        let s:dirs = split(getcwd(), "/")
"        while s:dirs != []
"                let s:path = "/" . join(s:dirs, "/")
"                if (filereadable(s:path . "/cscope.out"))
"                        execute "cs add " . s:path . "/cscope.out " . s:path . " -v"
"                        break
"                endif
"                let s:dirs = s:dirs[:-2]
"        endwhile
"
"        set csto=0	" Use cscope first, then ctags
"        set cst		" Only search cscope
"        set csverb	" Make cs verbose
"
"        nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"        nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"        nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"        nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"        nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"        nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"        nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"        nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"
"        " Open a quicfix window for the following queries.
"        set cscopequickfix=s-,c-,d-,i-,t-,e-,g-
"endif

"dictionar
" aw = autowrite
" sm = showmatch (paranteze)
" ai = autoindent
" cin = cindent
" tw = text width
" sw = shiftwidth
" sts = soft tab stops
" et, noet = expand tabs
"

