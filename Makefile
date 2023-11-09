DOTSCRIPTDIR="${HOME}/dotfiles-linux/scripts"

all:
	@echo "Config files for linux"

wsl2:
	@${DOTSCRIPTDIR}/base.sh
	@${DOTSCRIPTDIR}/homebrew.sh

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
