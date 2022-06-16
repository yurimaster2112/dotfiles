1. Install 1password:
   https://1password.com/downloads/linux
   Run: 
   ``` 
   dpkg -i ~/Download/1Password 
   ```
2. Install Git:
   ``` 
   sudo apt install git 
   
   ```
   Initial set-up:
   ```
   git config --global user.name "Yurimaster2112"
   git config --global user.email "Yurimaster2112@gmail.com"
   
   ```
3. Set up SSH connection:
   ``` ssh-keygen -t ed25519 ```
5. Set-up Git Bare Repository:
   https://www.atlassian.com/git/tutorials/dotfiles
   Run: 
   ``` 
   mkdir ~/dotfiles
   alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
   echo ".cfg" >> .gitignore
   git clone --bare git@github.com:yurimaster2112/dotfiles.git $HOME/dotfiles
   alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME
   config checkout 
   ```
   delete conflicted files. Then, run: 
   ``` 
   config checkout 
   ``` again.
   Finally, run: 
   ``` 
   config config --local status.showUntrackedFiles no 
   ```
   
   Set-up and update Vim:
   ``` 
   sudo add-apt-repository ppa:jonathonf/vim
   sudo apt update
   sudo apt install vim
   
   ```
 
   Clone Vim Plug:
   ``` curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
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
    ``` CocInstall coc-clangd
        CocInstall coc-pyright
        CocInstall coc-python
        CocInstall coc-sh
     ```
    
    
    Setup I3
    ```
    sudo apt install i3
    ```
    
    i3-gaps:
    ```
    sudo add-apt-repository ppa:regolith-linux/release
    sudo apt update
    sudo apt install i3-gaps
    
    ```
    
    polybar
    https://github.com/polybar/polybar/wiki/Compiling
    build dependencies:
    ```
    sudo apt install build-essential git cmake cmake-data pkg-config python3-sphinx python3-packaging libuv1-dev libcairo2-dev libxcb1-dev libxcb-util0-devl ibxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev
    
    sudo apt install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev     libnl-genl-3-dev
    ```
    Download: https://github.com/polybar/polybar/releases
    `tar xvzf polybar-<version>.tar. Now change into the extracted folder (generally cd polybar-<version>) and run ./build.sh`
    
    polybar themes:
    clone my config first:
    ```
    config pull
    ```
    clone polybar themes:
    ```
    git clone --depth=1 https://github.com/adi1090x/polybar-themes.git
    
    ```
    restore previous version:
    ```
    config restore ~/.config/polybar/cuts
    
    ```
    
    rofi
    ```
    sudo apt-get update && sudo apt-get install rofi
    
    ```
    alacritty
    ```
    sudo add-apt-repository ppa:mmstick76/alacritty 
    sudo apt install alacritty
    
    ```
    
    apps (light, nitrogen, alacritty, feh, discord,zscroll,spotify)
    ```
    sudo apt install light
    sudo apt install nitrogen
    sudo apt install feh
 
