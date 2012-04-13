#!/bin/bash

### HOWTO INSTALL? ###
# Add this at the bottom of your $HOME/.bashrc file:
#  source /path/to/random_funfact.sh

# Get a random funfact from
funfact() {
    local cmd
    cmd="elinks"
    which $cmd >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        $cmd -dump randomfunfacts.com | sed -n '/^|/p' | tr -d \|
    else
        echo "Your need 'elinks' installed to run this function.."
    fi
}
