if [ -d "$HOME/.node_modules/bin" ] ; then
    PATH="$HOME/.node_modules/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
