" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Colorschemes
    Plug 'gruvbox-community/gruvbox'
    Plug 'ayu-theme/ayu-vim'
    Plug 'doums/darcula'
    Plug 'ghifarit53/tokyonight-vim'
    " Good python code reformatter
    Plug 'ambv/black'
    " Code-completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Code debugger
    Plug 'puremourning/vimspector'
    " Code linter
    Plug 'vim-syntastic/syntastic'
    " Code commenter
    Plug 'preservim/nerdcommenter'
    " auto-completing parenthesis...etc
    Plug 'tpope/vim-surround'
    " Fuzzy finder (till telescope becomes more stable)
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " 'The fancy start screen for vim'
    Plug 'mhinz/vim-startify'
    " Tag browser
    Plug 'preservim/tagbar'
    " Floating terminal
    Plug 'voldikss/vim-floaterm'
    " Git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Snippets
    Plug 'honza/vim-snippets'

call plug#end()
