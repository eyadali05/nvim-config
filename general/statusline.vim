set laststatus=2
set statusline=
set statusline+=|
set statusline+=\ 
set statusline+=<
set statusline+=<
set statusline+=%F
set statusline+=>
set statusline+=>
set statusline+=%=
set statusline+=%{b:gitbranch}
set statusline+=\ 
set statusline+=%y
set statusline+=\ 
set statusline+=%{strftime(\"%H:%M\")}
set statusline+=\ 
set statusline+=|

function! StatuslineGitBranch()
  let b:gitbranch=""
  if &modifiable
    try
      let l:dir=expand('%:p:h')
      let l:gitrevparse = system("git -C ".l:dir." rev-parse --abbrev-ref HEAD")
      if !v:shell_error
        let b:gitbranch="(".substitute(l:gitrevparse, '\n', '', 'g').") "
      endif
    catch
    endtry
  endif
endfunction

augroup GetGitBranch
  autocmd!
  autocmd VimEnter,WinEnter,BufEnter * call StatuslineGitBranch()
augroup END

