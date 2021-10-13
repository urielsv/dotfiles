"Map leader to <SPACE>
let mapleader = " "

"CTRL + S to SAVE"
nnoremap <C-s> :w<CR>

"NERDTree
nnoremap <C-\> :NERDTreeToggle <CR>

"FZF
nnoremap <leader>f :FZF<CR>
aug fzf
    autocmd! Filetype fzf
    autocmd FileType fzf set laststatus=0 noshowmode noruler
      \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
aug END

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"New terminal below
nnoremap <C-t> :split term://$BASH<cr>:set nonumber<cr>:set modifiable<cr>:resize 10<cr>:a<cr>
