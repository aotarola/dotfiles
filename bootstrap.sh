#!/bin/bash
cd "$(dirname "${BASH_SOURCE}")"
git pull
function doIt() {
	for file in $(find . -not -path '\.' -not -path '*/\.*' -not -name 'README.md' -not -name '*.sh' -exec basename {} \;)
	do
		ln -s $(pwd)/$file ~/.$file
	done
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
