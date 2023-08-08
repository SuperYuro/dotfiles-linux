[[ $- != *i* ]] && return

if ! [[ $TMUX || $VIRTUAL_ENV || $VSCODE_IPC_HOOK_CLI ]]; then
	cd
fi

if type fish > /dev/null 2>&1 ; then
	exec fish
fi
