#!/bin/bash

sudo apt-get install \
	vim tree feh xfburn filezilla \
	gimp inkscape imagemagick shutter vlc \
	qt5-default libqt5serialport5-dev qtbase5-dev-tools \
	flex bison help2man \
	git tiled codeblocks fpc ruby-dev \
	pgpgpg libgnome-keyring-dev

# install jekyll
sudo gem install jekyll travis

cp -f .vimrc ~/.vimrc

# install gnome keyring to git
cd /usr/share/doc/git/contrib/credential/gnome-keyring
sudo make
git config --global credential.helper /usr/share/doc/git/contrib/credential/gnome-keyring/git-credential-gnome-keyring
git config --global push.default simple

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
