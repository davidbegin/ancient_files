filetype plugin indent on
syntax on
filetype on
set number
set numberwidth=2

set tabstop=2
set shiftwidth=2

noremap <leader>nn  :s/to/not_to<cr>
noremap <leader>na  :%s/to/not_to<cr>
noremap <leader>vv  :CommandTFlush<cr>\|:CommandT app/views<cr>
noremap <leader>cc  :CommandTFlush<cr>\|:CommandT app/controllers<cr>
noremap <leader>mm  :CommandTFlush<cr>\|:CommandT app/models<cr>
noremap <leader>js  :CommandTFlush<cr>\|:CommandT app/assets/javascripts<cr>
noremap <leader>css :CommandTFlush<cr>\|:CommandT app/assets/stylesheets<cr>
noremap <leader>rs  :CommandTFlush<cr>\|:CommandT spec<cr>
noremap <leader>gg  :vs Gemfile<cr>
noremap <leader>rr  :vs config/routes.rb<cr>
noremap <leader>app :vs config/application.rb<cr>
noremap <leader>ss  :vs db/seeds.rb<cr>
noremap <leader>log :vs log/development.log<cr>
noremap <leader>mig :CommandTFlush<cr>\|:CommandT db/migrate<cr>
cnoremap %% <C-R>=expand('%:h').'/'<cr>


noremap ,s :w\|:!zeus rspec spec<cr>
noremap ,z :w\|:!zeus rspec spec<cr>
noremap ,x :w\|:!zeus rspec %:p<cr>
" noremap ,c :w\|:!zeus rspec --tag focus %:p<cr>
noremap ,f :w\|:!rspec --tag focus<cr>
noremap ,c :w\|:!time zeus cucumber<cr>
noremap ,r :w\|:!ruby %:p<cr>
noremap ,n :w\|:!ruby %:t
noremap ,t :w\|:!zeus rspec %:p<cr>
" noremap ,p :w\|:!python %:t<cr>
noremap ,j :w\|:!rake spec:javascripts<cr>
noremap <leader>o :!bundle open 
noremap ,, <esc>:w<cr>
noremap ,q :q<cr>
noremap <leader>rc :source ~/.vimrc<cr>
noremap <leader>cp :topleft 50 :vs %<cr>
noremap ff :vertical resize 120<cr>
noremap fm :vertical resize 75<cr>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

autocmd BufReadPost *
\ 	if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

" vnoremap ,c I#<space><esc><esc>
vnoremap ,u :normal xx<CR>
noremap <space> viw " select a word
nnoremap - ddp
nnoremap <c-u> viwg~
nnoremap _ ddkP
inoremap <c-u> <esc>viwUA

map <leader>vi :vs $MYVIMRC<cr>

:iabbrev nd end
:iabbrev nde end
:iabbrev ned end
:iabbrev edm end
:iabbrev edn end
:iabbrev emd end
:iabbrev doe do 
:iabbrev esle else
:cabbrev Vs vs
:inoremap jk <esc>


nmap <buffer> <leader>p <Plug>(xmpfilter-mark)
nmap <buffer> <leader>o <Plug>(xmpfilter-run)

set background=dark
noremap <leader>e :edit %:h<cr>

autocmd FileType eruby setlocal nowrap


