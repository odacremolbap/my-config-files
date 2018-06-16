.PHONY: vim
vim:
	mkdir -p ~/.local/share/vim/plugins
	[ -f ~/.vimrc ] || ln -s $(PWD)/vim/.vimrc ~/.vimrc

.PHONY: vim
vim-clean:
	rm -f ~/.vimrc
	rm -rf ~/.vim/


.PHONY: clean
clean: vim-clean
