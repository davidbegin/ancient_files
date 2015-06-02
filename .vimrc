" noremap ,c :w\|:!clear; cargo build; cargo run<cr>
" noremap ,b :w\|:!clear; cargo build<cr>
" noremap ,t :w\|:!clear; cargo test -- --nocapture<cr>
noremap ,b :w\|:!bundle install<cr>
noremap ,s :w\|:!bundle exec rspec <cr>
noremap ,t :w\|:!bundle exec rspec %:p<cr>

set shell=/bin/bash\ -i

filetype plugin indent on
syntax on
filetype on
set expandtab
set number
set numberwidth=2

set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start

set hlsearch
set vb t_vb=

" COMMAND T IS BACK!
" ...but disgued as CtrlP ssshhh...
" let g:ctrlp_map = '<c-p>'
noremap <leader>t :CtrlP<cr>

" noremap <leader>pp <C-S-^>

" This is supposed to be for search for visual highlighted text
" vnorem // y/<c-r>"<cr>"


" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>


function! Del_word_delims()
   let reg = getreg('/')
   " After *                i^r/ will give me pattern instead of \<pattern\>
   let res = substitute(reg, '^\\<\(.*\)\\>$', '\1', '' )
   if res != reg
      return res
   endif
   " After * on a selection i^r/ will give me pattern instead of \Vpattern
   let res = substitute(reg, '^\\V'          , ''  , '' )
   let res = substitute(res, '\\\\'          , '\\', 'g')
   let res = substitute(res, '\\n'           , '\n', 'g')
   return res
endfunction
inoremap <silent> <c-r>/ <c-r>=Del_word_delims()<cr>
cnoremap          <c-r>/ <c-r>=Del_word_delims()<cr>



let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_exit_from_insert_mode=0

" RORY
" noremap <leader>cc  :CommandTFlush<cr>\|:CommandT controllers<cr>
" noremap <leader>mm  :CommandTFlush<cr>\|:CommandT models<cr>

noremap <leader>bb <cr>irequire 'pry'; binding.pry; 1<cr>
noremap <leader>ir <cr>iit("is real"){expect{subject}.not_to(raise_error)}<cr>

noremap <leader>ss <cr>i
\# 1. Will this help me find bugs?<cr>
\# 2. Does this test serve as good documentation?<cr>
\# 3. Is the test setup painful?<cr>
\# 4. Will changing the private interface make this test fail?<cr>
\# 5. Are we mocking so much that this test could pass but the code fail?<cr>
\# 6. Are we testing a command or query method?<cr>
\# 7. is there another object in here, that is all private methods<cr>
\<esc>kvip==dd

" RAILS
noremap <leader>cc  :CommandTFlush<cr>\|:CommandT app/controllers<cr>
noremap <leader>mm  :CommandTFlush<cr>\| :CommandT app/models<cr>

noremap <leader>pp :CommandTFlush<cr>\|:CommandT app/presenters<cr>
noremap <leader>dd :CommandTFlush<cr>\|:CommandT app/decorators<cr>
noremap <leader>vv  :CommandTFlush<cr>\|:CommandT app/views<cr>
noremap <leader>js  :CommandTFlush<cr>\|:CommandT app/assets/javascripts<cr>
noremap <leader>css :CommandTFlush<cr>\|:CommandT app/assets/stylesheets<cr>
noremap <leader>rs  :CommandTFlush<cr>\|:CommandT spec<cr>
noremap <leader>ll :CommandTFlush<cr>\|:CommandT lib<cr>
noremap <leader>mig :CommandTFlush<cr>\|:CommandT db/migrate<cr>
noremap <leader>gg  :vs Gemfile<cr>
noremap <leader>rr  :vs config/routes.rb<cr>
noremap <leader>app :vs config/application.rb<cr>
" noremap <leader>ss  :vs db/seeds.rb<cr>
noremap <leader>log :vs log/development.log<cr>
" noremap <Leader>ag :Ag --ignore-dir=log -C 2 --break
noremap <leader>ag  :Ag
noremap <leader>tt  :Tabularize/
noremap <leader>pp  :set paste<cr>
noremap <leader>pk  :set nopaste<cr>

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%
map <leader>u d^

" noremap ,s :w\|:!zeus rspec spec<cr>
" noremap ,z :w\|:!zeus rspec spec<cr>
" noremap ,x :w\|:!zeus rspec %:p<cr>
" noremap ,c :w\|:!zeus rspec --tag focus %:p<cr>
" noremap ,c :w\|:!clear; cargo build; RUST_ENV=alpha cargo run<cr>

" noremap ,c :w\|:!time bundle exec cucumber features/system/automatic_assignment_of_ops_owners.feature<cr>
" noremap ,c :w\|:!time bundle exec cucumber features/user/processor_manager/manage_ops_owners.feature<cr>

" map ,f :w\|:!cucumber features/user/loan_processor/confirm_address_eligibility_autocomplete.feature --tags @focus<cr>
" noremap ,s :w\|:!bundle exec rspec --tag auto_decisioning<cr>
" noremap ,s :w\|:!bundle exec rspec spec/app/lib/auto_decisioning<cr>
" noremap ,t :w\|:!bundle exec rspec spec/unit/util/headers_spec.rb<cr>
" noremap ,s :w\|:!rspec --require ./spec/say_formatter.rb --format CustomFormatter<cr>
" noremap ,t :w\|:!rspec --require ./spec/say_formatter.rb --format CustomFormatter<cr>

" noremap ,s :w\|:!bundle exec rake<cr>
noremap ,p :w\|:!protractor protractor-conf.js --specs test/e2e/auth_spec.js<cr>
" noremap ,p :w\|:!python %:t<cr>
noremap ,f :w\|:!bundle exec rspec --tag focus<cr>
" noremap ,c :w\|:!time cucumber %:t<cr>
noremap ,r :w\|:!clear; ruby %:p<cr>
" noremap ,r :w\|:!rustc %:p<cr>
" noremap ,r :w\|:!rustc %:p --crate-type=dylib<cr>
noremap ,n :w\|:!ruby %:t
noremap ,j :w\|:!RAILS_ENV=test bundle exec rake spec:javascript<cr>
noremap <leader>o :!bundle open
noremap ,, <esc>:w<cr>
noremap ,q :q<cr>
noremap <leader>rc :source ~/.vimrc<cr>
noremap <leader>cp :topleft 50 :vs %<cr>
noremap ff :resize 100 <cr> <bar> :vertical resize 220<cr>
noremap fm <C-w>=

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

autocmd BufReadPost *
\   if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

" vnoremap ,c I#<space><esc><esc>
vnoremap ,u :normal xx<CR>
noremap <space> viw " select a word
nnoremap <c-u> viwg~
nnoremap - ddp
nnoremap _ ddkP
inoremap <c-u> <esc>viwUA
" inoremap ^ binding.pry

map <leader>vi :vs $MYVIMRC<cr>

:abbrev tabularize Tabularize

:abbrev pru pry
:abbrev consoke console
:abbrev pru pry
:abbrev proy pry
:abbrev pyr pry
:abbrev pryt pry
:abbrev prt pry
:iabbrev bidning binding
" :iabbrev Salesforce Salesforce™
" :iabbrev salesforce Salesforce™
" :iabbrev salesfosce Salesforce™
" :iabbrev salesfosce Salesforce™
" :iabbrev salesfroce Salesforce™
" :iabbrev salesfore Salesforce™
:iabbrev bidnign binding
:iabbrev bdinign binding
:iabbrev bining binding
:iabbrev bdingin binding
:iabbrev renewfind renewfund
:iabbrev reuqire require
:iabbrev nd end
:iabbrev nde end
:iabbrev ned end
:iabbrev edm end
:iabbrev edn end
:iabbrev emd end
:iabbrev doe do
:iabbrev od do
:iabbrev esle else
:iabbrev subjet subject
:iabbrev subjedt subject
:iabbrev subkject subject
:iabbrev subjkect subject
:iabbrev subjcet subject
:iabbrev subejct subject
:iabbrev boostrap bootstrap
:iabbrev recieve receive
:cabbrev Vs vs
:cabbrev Set set
:cabbrev Set set

" ":inoremap jk <esc>
": inoremap jj <esc>
" inoremap <esc> NO ESCAPE FOR YOU

set background=dark
noremap <leader>e :edit %:h<cr>
autocmd FileType eruby setlocal nowrap
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'bufexplorer.zip'
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'rking/ag.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-rails'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-endwise'
Plugin 'tomtom/tcomment_vim'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-rake'
Plugin 'mhinz/vim-startify'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'matchit.zip'
Plugin 'elzr/vim-json'
Plugin 'godlygeek/tabular'
" Plugin 'plasticboy/vim-markdown'
Plugin 'wting/rust.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-liquid'
Plugin 'tpope/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'greplace.vim'
Plugin 'ryanss/vim-hackernews'
Plugin 'kshenoy/vim-signature'''
Plugin 'kien/ctrlp.vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 't9md/vim-ruby-xmpfilter'
" SEGFAULTING
" Plugin 'wincent/command-t'
"Bundle 'codegram/vim-codereview'
"Bundle 'junkblocker/patchreview-vim'
" Plugin 'xmisao/rubyjump.vim'
call vundle#end()
filetype plugin indent on

let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

nnoremap <C-w>> :vertical res +5<CR>
nnoremap <C-w>< :vertical res -5<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" unfold all lines
au BufRead * normal zR

map <C-n> :NERDTreeToggle<CR>

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

set shell=$SHELL

set relativenumber

let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>"
