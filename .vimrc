call pathogen#infect()
syntax on
filetype plugin indent on

set tabstop=2
set shiftwidth=2

map <leader>vv  :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>cc  :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>mm  :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>js  :CommandTFlush<cr>\|:CommandT app/assets/javascripts<cr>
map <leader>css :CommandTFlush<cr>\|:CommandT app/assets/stylesheets<cr>
map <leader>rs  :CommandTFlush<cr>\|:CommandT spec<cr>
map <leader>gg  :topleft 75 :vs Gemfile<cr>
map <leader>rr  :topleft 75 :vs config/routes.rb<cr>
map <leader>app :topleft 75 :vs config/application.rb<cr>
map <leader>ss  :topleft 75 :vs db/seeds.rb<cr>
map <leader>log  :topleft 75 :vs log/development.log<cr>
map <leader>mig :CommandTFlush<cr>\|:CommandT db/migrate<cr>
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e   :edit %%
map ,s :w\|:!rspec spec<cr>
map ,c :w\|:!cucumber<cr>
map ,r :w\|:!ruby %:t<cr>
map ,t :w\|:!rspec %:p<cr>

