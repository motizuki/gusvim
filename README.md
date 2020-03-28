# Requirements  

Vim 8+

## Install

`git clone https://github.com/motizuki/gusvim.git ~/gusvim && cd ~/gusvim && sh install.sh`
`vim`  
`:PlugInstall`

## Cheatsheet

`,` is used as mapleader `backslash` is used as localleader  

`.` - Repeat last command  

### Quickfix list

`:cdo[!]` - Execute {cmd} in each valid entry in the quickfix list.

`:cfdo[!]` - Execute {cmd} in each file in the quickfix list.

`:ld[o][!]` - Execute {cmd} in each valid entry in the location list for the current window.

`:lfdo[!]` - Execute {cmd} in each file in the location list for the current window. 

### Utils

`Alt-j` / `k` - Move line/block up/down  
`F2` - Toggle paste mode :)  

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


### Fugitive

`:Glog -- %` Loads commits that touches the current file in the quickfix list

### Surround
`S` in `VisualMode` - Add surround [any surround]  

### Vim align
`,t=` - align on =  
`,tsp` - align on whitespace  
`,t,` - align on commas  
`,t|` - align on vertical bars  
`:AlignSEPARATORS` - align on separators  

### Vim tmux runner

[See](https://github.com/motizuki/gusvim/blob/222f1f65b83cb829bfc698232a5400f3af4c1357/plugins.vim#L48)
