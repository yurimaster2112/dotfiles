1. Install 1password:
   https://1password.com/downloads/linux
   Run: ``` dpkg -i ~/Download/1Password ```
2. Install Git:
   ``` sudo apt install git ```
   Initial set-up:
   ``` git config --global user.name "Yurimaster2112"
       git config --global user.email "Yurimaster2112@gmail.com"
   ```
3. Set up SSH connection:
   ``` ssh-keygen -t ed25519 ```
5. Set-up Git Bare Repository:
   https://www.atlassian.com/git/tutorials/dotfiles
   Run: ``` mkdir ~/dotfiles
            alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
            echo ".cfg" >> .gitignore
