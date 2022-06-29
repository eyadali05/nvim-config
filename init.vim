source ~/.config/nvim/general/ale.vim
source ~/.config/nvim/plugged/plugins.vim
source ~/.config/nvim/general/sets.vim
source ~/.config/nvim/general/coc.vim
source ~/.config/nvim/general/fzf.vim
source ~/.config/nvim/general/keymaps.vim
source ~/.config/nvim/general/nerd_tree.vim
source ~/.config/nvim/general/statusline.vim


"Keymaps, if the above source didn't work

"FUZZY FINDING
nnoremap <leader>sa :Files<CR>
nnoremap <leader>sc :Lines<CR>
nnoremap <leader>sb :BLines<CR>
nnoremap <leader>sg :Rg<CR>

"Floaterm
nnoremap <leader>fp :FloatermNew! python3<CR>
nnoremap <leader>fh :FloatermNew! htop<CR>
nnoremap <leader>fn :FloatermNew! ncdu<CR>
nnoremap <leader>rp :FloatermNew! python3 %<CR>
nnoremap <leader>rc :FloatermNew! gcc % -o compiled && ./compiled<CR>

"Tagbar
nmap <F8> :TagbarToggle<CR>
