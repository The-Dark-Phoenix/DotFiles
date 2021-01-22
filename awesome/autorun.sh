#!/usr/bin/env bash

# Func to start application 

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

# Autostart Applications

run nitrogen --restore
run xcompmgr 
run alacritty

