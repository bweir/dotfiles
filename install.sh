#!/bin/bash

# apt

sudo sed -e 's/^# \(deb .*partner\)/\1/' -i /etc/apt/sources.list
sudo apt-get update

# base system
sudo apt-get install \
	vim tree feh xfburn filezilla \
	chromium-browser adobe-flashplugin \
	gimp inkscape imagemagick shutter vlc \
	qt5-default libqt5serialport5-dev qtbase5-dev-tools qttools5-dev-tools \
	flex bison help2man \
	git tiled codeblocks fpc ruby-dev \
    kicad nodejs npm \
	pgpgpg libgnome-keyring-dev

# graphics drivers
# https://help.ubuntu.com/community/BinaryDriverHowto/Nvidia
#sudo apt-get install nvidia-352

# ruby software
sudo gem install jekyll travis

# nodejs software
sudo npm install gitbook-cli -g
sudo ln -sf /usr/bin/nodejs /usr/bin/node

# setup vim
cp -f .vimrc ~/.vimrc

# install gnome keyring to git
pushd /usr/share/doc/git/contrib/credential/gnome-keyring
if [ ! -f git-credential-gnome-keyring ] ; then
    echo "Setting up gnome-keyring for git"
    sudo make
    git config --global credential.helper /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring
    git config --global push.default simple
fi
popd

#pushd ~
#mkdir -p Projects
#pushd Projects
#
#CHECKOUT='git clone --recursive'
#PARALLAX='https://github.com/parallaxinc/'
#LAME='https://github.com/lamestation/'
#BWEIR='https://github.com/bweir/'
#
#$CHECKOUT $PARALLAX/BadgeHacker
#$CHECKOUT $PARALLAX/PropellerIDE
#$CHECKOUT $PARALLAX/parallaxinc.github.io
#$CHECKOUT $PARALLAX/spin-standard-library
#
#$CHECKOUT $LAME/lamestation-sdk
#$CHECKOUT $LAME/lamestation.github.com
#$CHECKOUT $LAME/packthing
#
#popd
#popd
