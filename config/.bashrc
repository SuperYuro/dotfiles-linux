[[ $- != *i* ]] && return

if ! [[ $TMUX || $VIRTUAL_ENV || $VSCODE_IPC_HOOK_CLI ]]; then
	cd
fi

if [[ $VSCODE_IPC_HOOK_CLI ]]; then
	return
fi
if type /home/linuxbrew/.linuxbrew/bin/fish > /dev/null 2>&1; then
  exec /home/linuxbrew/.linuxbrew/bin/fish
fi
