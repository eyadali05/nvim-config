" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

  " Good Python Code Formatter
  Plug 'ambv/black'
  " Autocomplete, all in one essential package
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " ColorScheme
  Plug 'gruvbox-community/gruvbox'

  " Project-wide Searching
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'

  " Project Management
  Plug 'mhinz/vim-startify'
  " Lists Useful stuff
  Plug 'preservim/tagbar'
  " Terminal in neovim
  Plug 'voldikss/vim-floaterm'

  " Syntax Manager
  Plug 'dense-analysis/ale'
  " Emmet-like action in vscode
  Plug 'mattn/emmet-vim'
  " Adding indentation lines
  Plug 'lukas-reineke/indent-blankline.nvim'

  " Syntax Highlighting
  Plug 'sheerun/vim-polyglot'

  " Tree File Structure
  Plug 'preservim/nerdtree'
  " Language Servers
  Plug 'yaegassy/coc-pylsp', {'do': 'yarn install --frozen-lockfile'}

call plug#end()
