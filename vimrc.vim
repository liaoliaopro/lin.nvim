" vim plugins
source $HOME/.vim/plugin.vim

" vim standalone settings
source $HOME/.vim/setting/linrongbin16/standalone.vim

" color schemes
source $HOME/.vim/setting/linrongbin16/colorscheme.vim

" ui
source $HOME/.vim/setting/romgrk/barbar.nvim.vim
source $HOME/.vim/setting/nvim-lualine/lualine.nvim.vim
source $HOME/.vim/setting/kyazdani42/nvim-tree.lua.vim
source $HOME/.vim/setting/airblade/vim-gitgutter.vim
source $HOME/.vim/setting/jlanzarotta/bufexplorer.vim

" Highlight
source $HOME/.vim/setting/RRethy/vim-hexokinase.vim
source $HOME/.vim/setting/RRethy/vim-illuminate.vim

" Tags
source $HOME/.vim/setting/liuchengxu/vista.vim.vim
source $HOME/.vim/setting/ludovicchabant/vim-gutentags.vim

" Language Server
source $HOME/.vim/setting/neoclide/coc.nvim.vim

" Search Engine
source $HOME/.vim/setting/junegunn/fzf.vim.vim

" HTML Tag
source $HOME/.vim/setting/alvan/vim-closetag.vim
" C#
source $HOME/.vim/setting/OmniSharp/omnisharp-vim.vim

" Editing Support
source $HOME/.vim/setting/phaazon/hop.nvim.vim
source $HOME/.vim/setting/windwp/nvim-autopairs.vim
source $HOME/.vim/setting/chaoren/vim-wordmotion.vim
source $HOME/.vim/setting/haya14busa/incsearch.vim.vim

" GUI
source $HOME/.vim/setting/linrongbin16/gui.vim
" Enhanced Copy Paste
source $HOME/.vim/setting/linrongbin16/enhanced-copy-paste.vim
" FileType Mappings
source $HOME/.vim/setting/linrongbin16/filetype-map.vim

" User Settings
if filereadable(expand('~/.vim/setting.vim'))
    source $HOME/.vim/setting.vim
endif
