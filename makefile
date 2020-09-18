all: symlink plugins

symlink:
	mkdir -p "${HOME}/.config"
	rm -rf "${HOME}/.config/nvim"
	ln -sv "${PWD}" "${HOME}/.config/nvim"

plugins:
	nvim -c PlugInstall -c qa

clean:
	rm -rf .netrwhist plugged
	rm -f "${HOME}/.config/nvim"

.PHONY: all symlink plugins clean
