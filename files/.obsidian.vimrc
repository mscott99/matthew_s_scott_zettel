"section from the plugin. Have j and k navigate visual lines rather than logical ones nmap j gj
"nmap k gk
" I like using H and L for beginning/end of line
" Quickly remove search highlights
"

unmap <Space>

imap jk <Esc>

exmap left_sidebar obcommand app:toggle-left-sidebar
nmap <Space>b :left_sidebar

exmap right_sidebar obcommand app:toggle-right-sidebar
nmap <Space>n :right_sidebar

exmap next_tab obcommand workspace:next-tab
nmap <Space>tn :next_tab
nmap <Tab> :next_tab

exmap prev_tab obcommand workspace:previous-tab
nmap <Space>tp :prev_tab
nmap <S-Tab> :prev_tab

exmap right_split obcommand editor:focus-right
nmap <C-l> :right_split

exmap left_split obcommand editor:focus-left
nmap <C-h> :left_split

exmap follow_link obcommand editor:follow-link
nmap gf :follow_link

exmap follow_link_new_split obcommand editor:open-link-in-new-split
nmap <Space>gf :follow_link_new_split

exmap next_heading obcommand obsidian-editor-shortcuts:goToNextHeading
nmap ]] :next_heading
vmap ]] :next_heading

exmap prev_heading obcommand obsidian-editor-shortcuts:goToPrevHeading
nmap [[ :prev_heading
vmap [[ :prev_heading

exmap daily_open obcommand periodic-notes:open-daily-note
nmap <Space>do :daily_open
	
exmap toggle_pin obcommand workspace:toggle-pin
nmap <Space>gp :toggle_pin

unmap H
exmap back obcommand app:go-back
nmap H :back

unmap L
exmap forward obcommand app:go-forward
nmap L :forward

exmap command_palette obcommand command-palette:open
map <Space>p :command_palette

" exmap switcher obcommand switcher:open
" map <Space>o :switcher

exmap switcher obcommand omnisearch:show-modal
map <Space>o :switcher

exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_backticks surround ` `
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }

" NOTE: must use 'map' and not 'nmap'
nunmap s
vunmap s
map gsa" :surround_double_quotes
map gsa' :surround_single_quotes
map gsa` :surround_backticks
map gsab :surround_brackets
map gsa( :surround_brackets
map gsa) :surround_brackets
map gsa[ :surround_square_brackets
map gsaw :surround_wiki
map gsa{ :surround_curly_brackets
map gsa} :surround_curly_brackets
noremap <Shift-j> 5j
" Yank to system clipboard
set clipboard=unnamed

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
"exmap back obcommand app:go-back
"nmap <C-o> :back
"exmap forward obcommand app:go-forward
"nmap <C-i> :forward


exmap quickswitcher obcommand switcher:open
exmap palette obcommand command-palette:open

" unmap <Space>
" nnoremap <Space>p :palette
" nnoremap <Space>o :quickswitcher
