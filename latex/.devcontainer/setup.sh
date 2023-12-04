sudo apt-get update -y
sudo apt-get upgrade -y
mkdir /tmp/install-tl-unx
wget -O - https://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2023/install-tl-unx.tar.gz | tar -zxv -C /tmp/install-tl-unx/
sudo perl /tmp/install-tl-unx/install-tl-20*/install-tl --profile .devcontainer/texlive2023.profile
sudo /usr/local/texlive/2023/bin/x86_64-linux/tlmgr path add
sudo tlmgr update --self --all
sudo tlmgr install latexmk
sudo tlmgr install lualatex-math
sudo tlmgr install titlesec
