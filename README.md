# Install 1password:
   https://1password.com/downloads/linux
   Run: 
   ``` 
   sudo dpkg -i ~/Download/1Password 
   ```
# Install Git:
   ``` 
   sudo apt install git 
   ```
   Initial set-up:
   ```
   git config --global user.name "Yurimaster2112"
   git config --global user.email "Yurimaster2112@gmail.com"
   ```
# Set up SSH connection:
   ``` 
   ssh-keygen -t ed25519
   ```
# Set-up Git Bare Repository:
   https://www.atlassian.com/git/tutorials/dotfiles
   Run: 
   ``` 
   mkdir ~/dotfiles
   alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
   echo ".cfg" >> .gitignore
   git clone --bare git@github.com:yurimaster2112/dotfiles.git $HOME/dotfiles
   alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
   config checkout 
   ```
   delete conflicted files. Then, run: 
   ``` 
   config checkout
   ```
   
   Finally, run: 
   ``` 
   config config --local status.showUntrackedFiles no 
   ```
   
# Set-up and update Vim:
   ``` 
   sudo add-apt-repository ppa:jonathonf/vim
   sudo apt update
   sudo apt install vim vim-gtk
   ```
 
   Clone Vim Plug:
   ``` 
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   ```
   Install Plugins:
   ``` 
   :PlugInstall
   ```
   Install JSnode:
   ```
   curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
   sudo apt-get install -y nodejs
   ```
   Setup COC:
   Already configured in vimrc file.
# Setup I3, Polybar, Rofi.
   ```
   sudo apt install i3
   ```
   i3-gaps:
   ```
   sudo add-apt-repository ppa:regolith-linux/release
   sudo apt update
   sudo apt install i3-gaps
   ```
   Setup polybar:
   Follow instructions at https://github.com/polybar/polybar/wiki/Compiling
   build dependencies:
   ```
   sudo apt install build-essential git cmake cmake-data pkg-config python3-sphinx python3-packaging libuv1-dev libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev
   sudo apt install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev     libnl-genl-3-dev
   ```
   Download the lastest polybar release at: https://github.com/polybar/polybar/releases
   ``` 
   cd ~/Download
   tar xvzf polybar-<version>.tar
   ```
   Now change into the extracted folder (generally `cd polybar-<version>`) and run `./build.s`
   Install polybar themes:
   ```
   git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
   ```
   restore my config:
   ```
   config restore ~/.config/polybar
   ```
   Install Rofi
   ```
   sudo apt-get update && sudo apt-get install rofi
   ```
   Clone Rofi themes:
   ```
   git clone --depth=1 https://github.com/adi1090x/rofi.git
   cd rofi
   chmod +x setup.sh
   ```
   Modify $PATH variable, open .bashrc or .zshrc in the home directory. Append this line at the end of the file:
   ```
   export PATH=~/.config/rofi/bin:$PATH
   export PATH=~/.config/polybar/mybar/scripts:$PATH
   ```
# Terminal emulator and compositor:
   Install Kitty
   ```
   curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
   ln -s ~/.local/kitty.app/bin/kitty ~/.local/bin/
   ```
   Install Picom
   Dependencies:
   ```
   libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev meson
   ```
   Build:
   ```
   $ git submodule update --init --recursive
   $ meson --buildtype=release . build
   $ ninja -C build
   $ ninja -C build install
   ```
# MISC
   ```
   curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
   echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
   ```
   Then you can install spotify:
   ```
   sudo apt-get update && sudo apt-get install spotify-client
   ```
   Install Discord 
   Dowload at: https://discord.com/download
   Run:
   ```
   sudo dpkg -i ~/Download/discord--verison.
   ```
   Supporting Apps: light, nitrogen, feh,playerctl, ranger, scrot, viewnior
   ```
   sudo apt install light nitrogen feg playerctl ranger scrot xclip viewnior tmux xfsetting
   ```
   Install exa:
   Download lastest zip file at: https://github.com/ogham/exa/releases
   Extract and copy the exa's bin file into /usr/local/bin
   Copy exa's man page into /usr/share/man/man1

   Install Pandoc and PDFlatex:
   ```
   sudo apt install pandoc
   sudo apt-get install texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra latexmk
   ```
   Install Zathura as a pdf reader:
   ```
   sudo apt install zathura zathura-cb zathura-pdf-poppler zathura-ps
   ``` 
   Install Udiskie for automounting external drives:
   ```
   sudo apt install udiskie
   ```
# Zsh shell and Oh-My-zsh:
   Install Zsh
   ```
   sudo apt install zsh
   ```
   Shell swap:
   ```
   chsh -S (which zsh)
   ```
   Install Oh-My-Zsh plugin manager and powerlevel10k:
   ```
   sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
   ```
