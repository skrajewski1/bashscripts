#!/bin/bash

# Define the new PS1 line
new_ps1="PS1='\[\e[1;32m\][\u@\h \W]\$ \[\e[0m\]'"

# Remove any existing PS1 line from ~/.bashrc
if grep -qF "$new_ps1" ~/.bashrc; then
    sed -i "/$new_ps1/d" ~/.bashrc
fi

# Add the new PS1 line to ~/.bashrc
echo "$new_ps1" >> ~/.bashrc

# Reload the terminal prompt
source ~/.bashrc
