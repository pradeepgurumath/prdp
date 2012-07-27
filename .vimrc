set ts=4
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
nmap <F7> :TagbarOpen<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <silent> <F3> :RgrepAdd<CR>
nnoremap <silent> <F4> :Rgrep<CR>

:let Grep_Default_Options = '-rn'

:let Grep_Default_Filelist = '*.[ch]'

:let Grep_Path = '/bin/grep'

:let Grep_Skip_Files = '*.bak vmlinux .tmp_vmlinux1 .tmp_System.map .tmp_vmlinux2 *.S *~ .*.swp tags *.opt *.ncb *.plg ' .
    \ '*.o *.elf cscope.out *.ecc *.exe *.ilk *.out *.pyc build.out doxy.out'

aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END
