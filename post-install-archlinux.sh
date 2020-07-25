#!/bin/zsh
#### Logiciels à installer ####
firefox=1
chromium=1
php=1
nodejs=1
discord=1
virtualbox=1
vscode=1
configureGit=1
theme=1
#### Fin des logiciels ####
if [[ "$firefox" -eq "1" ]]
then
    sudo pacman -S firefox firefox-i18n-fr --noconfirm
fi

if [[ "$chromium" -eq "1" ]]
then
    sudo pacman -S chromium --noconfirm
fi
if [[ "$php" -eq "1" ]]
then
    sudo pacman -S php --noconfirm
fi
if [[ "$nodejs" -eq "1" ]]
then
    sudo pacman -S nodejs yarn npm --noconfirm
fi
if [[ "$discord" -eq "1" ]]
then
    sudo pacman -S discord --noconfirm
fi
if [[ "$virtualbox" -eq "1" ]]
then
    sudo pacman -S virtualbox virtualbox-host-modules-arch --noconfirm
fi
if [[ "$vscode" -eq "1" ]]
then
    cd /tmp
    git clone https://aur.archlinux.org/visual-studio-code-bin.git
    cd visual-studio-code-bin
    makepkg -si
    cd
fi
if [[ "$configureGit" -eq "1" ]]
then
    git config --global user.name "Gregory"
    git config --global user.email gregory.leblond.dev@gmail.com
fi
if [[ "$theme" -eq "1" ]]
then
    sudo pacman -S papirus-icon-theme arc-gtk-theme --noconfirm
fi



#### Fix nvidia screen tearing ####
nvidia-settings --assign CurrentMetaMode="DPY-1: nvidia-auto-select +0+0 {ForceCompositionPipeline=On}, DPY-0: nvidia-auto-select +1920+0 {ForceCompositionPipeline=On}"

#### Install VueCli & EsLint ###
sudo npm i -g @vue/cli
sudo npm i -g eslint
