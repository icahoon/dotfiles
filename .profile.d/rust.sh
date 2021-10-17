#pathmunge $HOME/.cargo/bin after

#if [ ! -f ~/.rust-up -o "$(cat ~/.rust-up 2>/dev/null)" != "$(date +%Y-%m-%d)" ]; then
#  date +%Y-%m-%d > ~/.rust-up
#  rustup update
#fi
