# Requirements  
Vim 7.4 or above + compiled with Lua (neocomplete plugin)  

# Install
`git clone https://github.com/motizuki/gusvim.git ~/gusvim && cd ~/gusvim && sh install.sh`  

# Cheatsheet

`,` is used as mapleader `backslash` is used as localleader  

`space` - Repeat last motion  
`.` - Repeat last command  

### Utils
`,qf` - Replace " to '  
`,e` - mapped to :e **/. essentially you do ,efoo<tab> to get a list of all files starting with foo  
`,s` - toggle invisible characters display  
`,n` - next quicklist result (like :Ggrep etc)  
`,N` - previous quicklist result (like :Ggrep etc)  
`Ctrl-e` - switch between 2 last buffers (its just a :b#<cr> :)  
`Ctrl-n` to cancel current search highlighing  
`,f` global Silver Searcher for word under the cursor or for selection  
`+` / `-` - easily inc/decrement integers  
`,W` - remove trailing spaces  
`Ctrl-h` / `j` / `k` / `l` - simplified split panes navigation  
`,d` - :diffupdate  
`,dp` - :diffput  
`,dg` - :diffget  
`%%` - in control mode, i.e. after you typed : it will expand to the directory name of the currently opened file.  
`Alt-j` / `k` - Move line/block up/down  
`F2` - Toggle paste mode :)  
`]p` paste with autoindent.  
`ga` print ascii value of character under the cursor  
`g#` like "#", but without using "<" and ">"  
`g<` display previous command output  
`zt` scroll cursor line to top  
`zz` scroll cursor line to center  
`zb` scroll cursor line to bottom  
`CTRL-W x` exchange current window with n-th window (or next if no count given)  
`gv` reselect last selection  
`gt` next tab  
`gT` prev tab  
`ci` change inside delimiters  
`di` delete inside delimiters  
`@@` execute last macro  
`"xyy` copy line into x register (replace x with any other)  
`<Ctrl-r>x` while in insert mote will paste content of register x (replace x with any other)  
`"xp` paste from register x  
`:reg` Display the contents of all numbered and named registers. 
`:cope` Open quickfix list

### Ctags
Generate ctags - `ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)`  
Auto generate ctags on bundle - ` gem install gem-ctags`  
`Ctrl-]` find word under cursor in Ctags  
`tn` next Ctags match  
`tp` previus Ctags match  
`Ctrl-t` back to original file  

### Ruby
`,hf` - Replace => to : with confirmation  

### Json
`,jf` in `VisualMode` - Format select text to JSON  

### NerdTree
`Ctrl-p` - Toggle tree  
`,p` - Find current file on tree  

### Nerdcommenter
`,/` - toggle comment  

### CtrlP
`,,` - CtrlP - fuzzy find  
`,.` - CtrlPClearCache followed by CtrlP - clears the cache and searches the files (not including MRU and buffers)  

### YankRing
`,y` to show the yankring  
`,[` or `,]` - to cycle the just-pasted text though the yankring

### Fugitive
`:Gstatus` - Bring up the output of git-status in the preview window. Press - to stage or unstage the file on the cursor line. Press p to do so on a per hunk basis (--patch). Press C to invoke :Gcommit. 
 - `Ctrl-n` - Next file  
 - `Ctrl-p` - Previous file  
 - `cc` - Commit window  
 - `:Gdiff ~3` Diff 3 commits ago or replace with revision
 - `:Glog -- %` Loads commits that touches the current file in the quickfix list

### Gitgutter
`,hp` - preview stage  
`,hs` - Stage hunk in the cursor  
`,hr` - revert hunk  
`]h` - Next hunk  
`[h` - Previous hunk  

### Surround
`cs` - Change Surround [from] [to]  
`cst` - Change surround [any tag] [to]  
`ds` - Delete surround [any surround]  
`S` in `VisualMode` - Add surround [any surround]  

### Vim align
`,t=` - align on =  
`,tsp` - align on whitespace  
`,t,` - align on commas  
`,t|` - align on vertical bars  
`:AlignSEPARATORS` - align on separators  

### Vim Indentobject
`vai` / `vii` - select indent block including / excluding the outer lines  
`yai` / `yii` - yank indent block including / excluding the outer lines  

### Gundo
`,u` - Open Gundo window

### Vim i18n
`,z` - Extract string to locale file   

### Vim rails
`:AV` - open "alternate" file in a new vertical split  
`:AS` - open "alternate" file in a new horizontal split  
`:RV` - open "related" file in a new vertical split  
`:RS` - open "related" file in a new horizontal split  
`:Rextract` - extract partial (select text for extraction first)  
`:Rinvert` - takes a self.up migration and writes a self.down.  
`gf` - remapped to take context into account. recognizes models associations, partials etc.  

### Vim Rspec
`,r` - Run nearest Rspec in Tmux Attached pane (Using VTR) 

### Vim tmux runner
`,rr` :VtrSendCommandToRunner - Send cache command to tmux pane  
`,rl` :VtrSendLinesToRunner - Send selected lines to tmux pane  
`,rc` :VtrClearRunner - Clear tmux pane  
`,rf` :VtrFlushCommand - Flush cache command  
`,rz` :VtrFocusRunner - Focus tmux pane  
`,rn` :VtrOpenRunner - Open new tmux pane  
`,rk` :VtrKillRunner - Kill current tmux pane  
`,ra` :VtrAttachToPane - Attach in a existent tmux pane  

### Emmet vim
`Ctrl-Y ,` in `Normal mode` - Convert emmet command into html tags  
`Ctrl-Y ,` in `Visual mode` - Apply emmet command into selected lines 
