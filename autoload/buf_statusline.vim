function! buffer_statusline#List() abort
    let bufline = ''
    for bufinfo in getbufinfo({'buflisted': 1})
        let bufline = bufline . bufinfo.bufnr . ':'
        if exists('*WebDevIconsGetFileTypeSymbol')
            let bufline = bufline . WebDevIconsGetFileTypeSymbol()
        endif
        let bufline = bufline . fnamemodify(bufinfo.name, ':t') . '|'
    endfor
    return bufline
endfunction
