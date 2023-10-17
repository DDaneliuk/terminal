declare -A toolsVersion
toolsVersion["git"]="git --version | awk '{print \$3}'"
toolsVersion["curl"]="curl --version | awk '{print \$2}' | head -1"
toolsVersion["zsh"]="zsh --version | awk '{print \$2}'"
toolsVersion["nvim"]="nvim --version | awk '{print \$2}' | head -1"
toolsVersion["python3"]="python3 --version | awk '{print \$2}'"
toolsVersion["nohup"]="nohup --version | awk '{print \$4}' | head -1"
