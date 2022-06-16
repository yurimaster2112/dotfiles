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
    
    
 
