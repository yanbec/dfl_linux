#!/bin/bash
read -r -p "This will remove EVERYTHING from your workspace. Are you sure you want to do this? [y/N] " response
case "$response" in
    [yY]) 
	echo "Deleting.."
        rm -rf workspace
	mkdir workspace
	mkdir workspace/data_dst
	mkdir workspace/data_src
        ;;
    *)
        echo "Canceled."
        ;;
esac

