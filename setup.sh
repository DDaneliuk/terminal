#!/bin/zsh

source "tools_versions.sh"
toolsFile="tools.txt"
tools=()

NC='\033[0m'        # NO color
GREEN='\033[0;32m'  # GREEN color

while IFS= read -r tool; do
  tools+=("$tool")
done < "$toolsFile"

for tool in $tools; do
    if ! command -v $tool &> /dev/null; then
	    echo "No $tool. Installing $tool.."
	    sudo apt update
	    sudo apt install $tool
	    echo "$tool has been installed"
    else
        version=$(eval $toolsVersion["$tool"])
        printf "%-10s : ${GREEN}%s${NC}\n" "$tool" "$version"
    fi
done
