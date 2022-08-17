"" ---- vim-plug.vim ----

if has('win32') || has('win64')
  set runtimepath^=~/.vim
endif

source ~/.vim/autoload/plug.vim
call plug#begin('~/.vim/plugged')

" Color Theme
Plug 'lifepillar/vim-solarized8'
Plug 'crusoexia/vim-monokai'
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'KeitaNakamura/neodark.vim'
Plug 'srcery-colors/srcery-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'joshdick/onedark.vim'
Plug 'Rigellute/rigel'
Plug 'chriskempson/base16-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'sainnhe/edge'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'
Plug 'sainnhe/sonokai'
Plug 'kaicataldo/material.vim', {'branch': 'main'}
Plug 'EdenEast/nightfox.nvim'
Plug 'folke/tokyonight.nvim', {'branch': 'main'}
Plug 'projekt0n/github-nvim-theme'
Plug 'rebelot/kanagawa.nvim'

""" Colors that not working well with tabline plugins (barbar.nvim or vim-buffet).
""" The active and non-active tabs don't have a high-contrast difference.
" Plug 'tomasiser/vim-code-dark'
" Plug 'tomasr/molokai'
" Plug 'romainl/Apprentice'

" UI
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/vim-gitbranch'
Plug 'jlanzarotta/bufexplorer'

" Not working correctly on windows, so use vim-gitgutter + vim-gitbranch
" Plug 'lewis6991/gitsigns.nvim'

" Highlight
Plug 'RRethy/vim-illuminate'
Plug 'RRethy/vim-hexokinase', {'do': 'make hexokinase'}

" Tags
Plug 'liuchengxu/vista.vim'
Plug 'ludovicchabant/vim-gutentags'

" Language Server and Search Engine
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'antoinemadec/coc-fzf'

" Other Language Support
" Flex, Bison
Plug 'justinmk/vim-syntax-extra', {'for': ['lex', 'flex', 'yacc', 'bison']}
" LLVM
Plug 'rhysd/vim-llvm'
" Protobuf
Plug 'uarun/vim-protobuf'
" Hive
Plug 'zebradil/hive.vim'
" Haskell
Plug 'neovimhaskell/haskell-vim'
" HTML Tag
Plug 'andymass/vim-matchup'
Plug 'alvan/vim-closetag'
" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
" C#
Plug 'OmniSharp/omnisharp-vim'

" Editing Support
Plug 'tomtom/tcomment_vim'
Plug 'phaazon/hop.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'chaoren/vim-wordmotion'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'haya14busa/incsearch.vim'
Plug 'mbbill/undotree'
Plug 'editorconfig/editorconfig-vim'

call plug#end()
