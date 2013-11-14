filetype plugin indent on
syntax on
set number
set numberwidth=2

set tabstop=2
set shiftwidth=2


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
noremap <leader>e   :edit %%
noremap ,s :w\|:!rspec<cr>
noremap ,f :w\|:!rspec --tag focus<cr>
" noremap ,c :w\|:!cucumber<cr>
noremap ,r :w\|:!ruby %:p<cr>
noremap ,n :w\|:!ruby %:t
noremap ,t :w\|:!rspec %:p<cr>
noremap ,p :w\|:!python %:t<cr>
noremap <leader>o :!bundle open 
noremap ,, <esc>:w<cr>
noremap ,q :q<cr>
noremap <leader>rc :source ~/.vimrc<cr>
noremap <leader>cp :topleft 50 :vs %<cr>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

autocmd BufReadPost *
\ 	if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

vnoremap ,c I#<space><esc><esc>
vnoremap ,u :normal xx<CR>
noremap <space> viw " select a word
nnoremap <leader>- ddp
nnoremap <leader>_ ddkP
inoremap <c-u> <esc>viwUA
nnoremap <c-u> viwg~

map <leader>vi :vs $MYVIMRC<cr>

:iabbrev nd end
:iabbrev doe do 
:inoremap jk <esc>

:autocmd FileType ruby :iabbrev <buffer> iff if (   )<left>

:autocmd BufWritePre *.html.erb :normal gg=G


autocmd FileType html :iabbrev <buffer> div <div></div><esc>^5l
autocmd BufNewFile,BufRead *.html.erb :iabbrev <buffer> div <div></div><esc>^5l
autocmd BufNewFile,BufRead *.html.erb :iabbrev <buffer> h1 <h1></h1><esc>^4l
autocmd BufNewFile,BufRead *.html.erb :iabbrev <buffer> h2 <h2></h2><esc>^4l
autocmd BufNewFile,BufRead *.html.erb :iabbrev <buffer> h3 <h3></h3><esc>^4l
autocmd BufNewFile,BufRead *.html.erb :iabbrev <buffer> h4 <h4></h4><esc>^4l
autocmd BufNewFile,BufRead *.html.erb :iabbrev <buffer> h5 <h5></h5><esc>^4l
autocmd BufNewFile,BufRead *.html.erb :iabbrev <buffer> h6 <h6></h6><esc>^4l
autocmd BufWritePre *.html.erb :normal gg=G
