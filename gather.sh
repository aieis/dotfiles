#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

LOCAL_DIR="$SCRIPT_DIR"/local
echo "Copying contents of dir $LOCAL_DIR"
for tf in "$LOCAL_DIR"/*; do
    fn=$(basename "$tf")
    sf="$HOME/.local/$fn"

    if [[ -d "$sf" && -d "$tf" ]]
    then
        echo cp -r "$sf"/* "$tf"/
        cp -r "$sf"/* "$tf"/
    else
        echo cp -r "$sf" "$tf"
        cp -r "$sf" "$tf"
    fi
done

CONFIG_DIR="$SCRIPT_DIR"/config
echo "Copying contents of dir $CONFIG_DIR"
for tf in "$CONFIG_DIR"/*; do
    fn=$(basename "$tf")
    sf="$HOME/.config/$fn"

    if [[ -d "$sf" && -d "$tf" ]]
    then
        echo cp -r "$sf"/* "$tf"/
        cp -r "$sf"/* "$tf"/
    else
        echo cp -r "$sf" "$tf"
        cp -r "$sf" "$tf"
    fi
done

HOME_DIR="$SCRIPT_DIR"/home
echo "Copying contents of dir $HOME_DIR"
for tf in "$HOME_DIR"/*; do
    fn=$(basename "$tf")
    sf="$HOME/$fn"
    [[ -f "$sf" ]] || sf="$HOME/.$fn"
    echo cp -r "$sf" "$tf"
    cp -r "$sf" "$tf"
done   
