sudo apt update

# rg <- grep (Rust)
# https://github.com/BurntSushi/ripgrep
sudo apt install ripgrep -y
# solve conflict witch bat https://github.com/sharkdp/bat/issues/938
sudo sed -i '/\/usr\/.crates2.json/d' /var/lib/dpkg/info/ripgrep.list
echo 'alias grep=rg' >> ~/.bashrc 

# bat <- cat (Rust)
# https://github.com/sharkdp/bat
sudo apt install bat -y
echo 'alias cat=batcat' >> ~/.bashrc 

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

# pipx
# https://github.com/pypa/pipx
pip3 install pipx
echo 'export PATH=$PATH:/home/ubuntu/.local/bin' >> ~/.bashrc 

# tldr 
# https://github.com/tldr-pages/tldr-python-client
pipx install tldr
tldr -u

source ~/.bashrc
