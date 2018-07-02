OLDPW = $(shel pwd)
setup: dir-structure oh-my-zsh

oh-my-zsh:
	cd tmp
	wget  https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
	chmod 700 install.sh
	./install.sh
	rm install.sh
	cd - > /dev/null
	
dir-structure:
	mkdir -p tmp

.PHONY: setup oh-my-zsh dir-structure
