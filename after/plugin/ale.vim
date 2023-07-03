let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'awk': ['gawk'],
\   'bash': ['bashate'],
\   'bibtex': ['bibclean'],
\   'c': ['clang'],
\   'cpp': ['clang'],
\   'css': ['prettier'],
\   'git': ['gitlint'],
\   'html': ['prettier'],
\   'javascript': ['prettier'],
\   'json': ['prettier'],
\   'julia': ['languageserver'],
\   'latex': ['texlab'],
\   'lua': ['luac'],
\   'markdown': ['prettier'],
\   'python': ['pylint'],
\   'r': ['lintr'],
\   'vim': ['vimls'],
\}

let g:ale_fix_on_save = 1
