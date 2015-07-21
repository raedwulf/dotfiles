#!/bin/sh

BSPWM_TREE=${TMPDIR}/bspwm.tree
BSPWM_HISTORY=${TMPDIR}/bspwm.history
BSPWM_STACK=${TMPDIR}/bspwm.stack
export BSPWM_TREE
export BSPWM_HISTORY
export BSPWM_STACK

PANEL_FIFO=${TMPDIR}/panel-fifo
PANEL_HEIGHT=24
PANEL_FONT_FAMILY="-*-terminus-medium-r-normal-*-12-*-*-*-c-*-*-1"
export PANEL_FIFO
export PANEL_HEIGHT
export PANEL_FONT_FAMILY

setxkbmap gb &
sxhkd &

while true ; do
	bspwm -p W || break
done
