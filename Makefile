DOTSCRIPTDIR="${HOME}/dotfiles-linux/scripts"

all:
	@echo "Config files for linux"

wsl2:
	@${DOTSCRIPTDIR}/config.sh
	@${DOTSCRIPTDIR}/wsl2.sh

desktop:
	@${DOTSCRIPTDIR}/base.sh
	@${DOTSCRIPTDIR}/homebrew.sh
	@${DOTSCRIPTDIR}/vscode.sh
	@${DOTSCRIPTDIR}/kitty.sh

laptop:
	@${DOTSCRIPTDIR}/base.sh
	@${DOTSCRIPTDIR}/homebrew.sh
	@${DOTSCRIPTDIR}/vscode.sh
	@${DOTSCRIPTDIR}/kitty.sh
	@${DOTSCRIPTDIR}/laptop.sh
