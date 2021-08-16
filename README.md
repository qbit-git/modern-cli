# Modern Alternatives of Command-Line Tools

* [rg](https://github.com/BurntSushi/ripgrep) <- grep (Rust)

## [bat](https://github.com/sharkdp/bat) <- cat (Rust)

# fd <- find (Rust)
# https://github.com/sharkdp/fd
sudo install fd-find -y
echo 'alias fd=fdfind' >> ~/.bashrc 
echo 'alias find="fdfind -H"' >> ~/.bashrc 

# exa <- ls (Rust)
# Only Ubuntu 20.10 (Groovy Gorilla) and later
# https://github.com/ogham/exa
# sudo apt install exa -y
# echo 'alias ls=exa' >> ~/.bashrc 

# procs <- ps (Rust)
# https://github.com/dalance/procs
# maybe later

# sd <- sed (Rust)
# https://github.com/chmln/sd
# maybe later

# dust <- du (Rust)
# https://github.com/bootandy/dust
# maybe later

# starship (Rust)
# https://github.com/starship/starship
# maybe later

# bandwhich <- nethogs (Rust)
# https://github.com/imsnif/bandwhich
# maybe later

# fzf (Go)
# https://github.com/junegunn/fzf
sudo apt install fzf
echo 'source /usr/share/doc/fzf/examples/completion.bash' >> ~/.bashrc 
echo 'source /usr/share/doc/fzf/examples/key-bindings.bash' >> ~/.bashrc 

# pipx (Python)
# https://github.com/pypa/pipx
pip3 install pipx
echo 'export PATH=$PATH:/home/ubuntu/.local/bin' >> ~/.bashrc 

# tldr (Python)
# https://github.com/tldr-pages/tldr-python-client
pipx install tldr
tldr -u

# glances <- top (Python)
# https://github.com/nicolargo/glances
pipx install glances
mkdir .config/glances/
cp .local/pipx/venvs/glances/share/doc/glances/glances.conf .config/glances/glances.conf

source ~/.bashrc
