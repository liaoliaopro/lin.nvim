let s:mycolors=['darkblue', 'solarized8', 'base16-default-dark', 'monokai', 'dracula', 'neodark', 'srcery',
      \ 'palenight', 'onedark', 'rigel', 'jellybeans', 'sonokai', 'everforest', 'gruvbox-material', 'edge',
      \ 'material', 'kanagawa', 'nightfox', 'tokyonight', 'github_dark']

" colors that not working well with tabline
" molokai
" apprentice

set background=dark

" for material
let g:material_terminal_italics = 1
let g:material_theme_style = 'default'

function NextColorScheme()
  let idx = localtime() % len(s:mycolors)
  execute 'colorscheme ' . s:mycolors[idx]
endfunction

function NextColorSchemeSync()
  let idx = localtime() % len(s:mycolors)
  execute 'colorscheme ' . s:mycolors[idx]
  execute 'syntax sync fromstart'
endfunction

" initialize color scheme for vim start
call NextColorScheme()
