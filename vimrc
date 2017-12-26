filetype on
syntax on
set nu
set cindent
set hlsearch
set expandtab
set tabstop=2
set shiftwidth=2
"set spell
set ignorecase
set incsearch
"set nowrapscan
set smartindent
set mp=./sct.sh
"set mp='build -a AARCH64 -b RELEASE -t ARMGCC -p SctPkg/UEFI/UEFI_SCT.dsc -m SctPkg/TestCase/UEFI/EFI/BootServices/ImageServices/BlackBoxTest/Dependency/ValidHiiImage1/ValidHiiImage1.inf'

syntax on

let mapleader = ","
""""""""""""""""""""""""""""""
" netrw setting
""""""""""""""""""""""""""""""
let g:netrw_winsize = 30
nmap <silent> <leader>FE :Sexplore!<cr> 
nmap <silent> <leader>fe :Explore<cr> 
nmap <silent> <leader>cs <ESC>^i#<ESC>
nmap <silent> <leader>cc <ESC>^i//<ESC>
nmap <silent> <leader>dg ODEBUG ((EFI_D_ERROR, "[%a:%d] - \n", __FUNCTION__, __LINE__));<ESC>
nmap <silent> <leader>dr ODEBUG ((EFI_D_ERROR, "[%a:%d] - %r\n", __FUNCTION__, __LINE__, Status));<ESC>
nmap <silent> <C-N> <ESC>:tabnew<CR>
" map Y "+y
map Y "*y
map <leader>c "+y
" Get current file name or path
nmap <silent> <leader>cn :let @" = expand("%")<CR>:let @* = expand("%")<CR>:let @+ = expand("%")<CR>
nmap <silent> <leader>cp :let @" = expand("%:p")<CR>:let @* = expand("%:p")<CR>:let @+ = expand("%:p")<CR>

"taglist{
let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
"let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
"let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
"let Tlist_Ctags_Cmd='/opt/local/bin/ctags'  "设置ctags命令的位置
nnoremap <leader>tl : Tlist<CR>        "设置关闭和打开taglist窗口的快捷键
"}

"CtrlP{
let g:ctrlp_regexp = 1
let g:ctrlp_by_filename = 1
set wildignore+=Build/*
"}

" For gvim
colorscheme torte
set guifont=Monospace\ 11
map <silent> <leader>; :read !date +\%m/\%d/\%Y<CR>

"set makeprg="../estuary/build-grub.sh1"
"set makeprg=uefi-tools/uefi-build.sh\ d02
"set makeprg=../uefi-tools/uefi-build.sh\ -c\ LinaroPkg/platforms.config\ d02
set makeprg=../uefi-tools/uefi-build.sh\ -c\ LinaroPkg/platforms.config\ d02

colorscheme desert


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>f :cs find f 
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
