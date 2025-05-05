#!/bin/bash

echo "Downloading Discord..."
curl -L -o discord.tar.gz "https://discord.com/api/download?platform=linux&format=tar.gz"

echo "Extracting discord..."
tar -xvzf discord.tar.gz

echo "Renaming dir: Discord -> discord"
mv Discord/ discord/

echo "Removing old install, if existing..."
sudo rm -rf /usr/share/discord/

echo "Installing Discord..."
sudo mv discord/ /usr/share/discord/
sudo rm /usr/share/applications/discord.desktop
sudo ln -s /usr/share/discord/discord.desktop /usr/share/applications/discord.desktop

echo "Cleanup..."
rm discord.tar.gz

echo "Finished installing Discord!"