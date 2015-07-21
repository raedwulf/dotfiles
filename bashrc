#!/bin/bash

export PATH=$HOME/bin:$PATH
export TMPDIR=/tmp/$USER-tmp

export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$TMPDIR
export XDG_RUNTIME_DIR=$TMPDIR

if [ ! -d "$TMPDIR" ]; then
	mkdir -p "$TMPDIR"
	chmod 0700 "$TMPDIR"
fi

# If not running interactively, don't do any more
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vi=vis

PS1='[\u@\h \W]\$ '
