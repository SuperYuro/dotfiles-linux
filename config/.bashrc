[[ $- != *i* ]] && return

if ! [[ $TMUX || $VIRTUAL_ENV ]]; then
	cd
fi

if type fish > /dev/null 2>&1 ; then
	exec fish
fi
