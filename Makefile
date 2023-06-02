DOTSCRIPTDIR="${HOME}/dotfiles-linux/scripts"

all:
	@echo "Config files for linux"

archwsl:
	@bash ${DOTSCRIPTDIR}/general/install.sh
	@bash ${DOTSCRIPTDIR}/general/config.sh

laptop:
	@bash ${DOTSCRIPTDIR}/general/install.sh
	@bash ${DOTSCRIPTDIR}/general/config.sh
	@bash ${DOTSCRIPTDIR}/gui/install.sh
	@bash ${DOTSCRIPTDIR}/gui/config.sh
	@bash ${DOTSCRIPTDIR}/laptop/install.sh
	@bash ${DOTSCRIPTDIR}/laptop/config.sh

desktop:
	@bash ${DOTSCRIPTDIR}/general/install.sh
	@bash ${DOTSCRIPTDIR}/general/config.sh
	@bash ${DOTSCRIPTDIR}/gui/install.sh
	@bash ${DOTSCRIPTDIR}/gui/config.sh
	@bash ${DOTSCRIPTDIR}/desktop/install.sh
	@bash ${DOTSCRIPTDIR}/desktop/config.sh

cliconfig:
	@bash ${DOTSCRIPTDIR}/general/config.sh
