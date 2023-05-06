#!/bin/bash

# Initialize the config file
config_dir="$HOME/.config/"
config_path="$config_dir/rm-delayed.conf"

if [ ! -f "${config_path}" ]; then
	if [ ! -d "$config_dir" ]; then
		mkdir -p -- "$config_dir"
	fi
    echo "declare -A fss" > "${config_path}"
fi

alias rm='rm-delayed'
