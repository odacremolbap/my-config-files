.PHONY: all
all: vim tmux


.PHONY: vim
vim:
	mkdir -p ~/.local/share/vim/plugins
	[ -f ~/.vimrc ] || ln -s $(PWD)/vim/.vimrc ~/.vimrc

.PHONY: vim-clean
vim-clean:
	rm -f ~/.vimrc
	rm -rf ~/.vim/

.PHONY: tmux
tmux:
	[ -f ~/.tmux.conf ] || ln -s $(PWD)/tmux/.tmux.conf ~/.tmux.conf

.PHONY: tmux-clean
tmux-clean:
	rm -f ~/.tmux.conf

.PHONY: clean
clean: vim-clean tmux-clean

