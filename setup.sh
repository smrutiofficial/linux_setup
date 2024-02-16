#!/bin/bash

# Update and upgrade the system
sudo apt update -y && sudo apt upgrade -y

# Install various applications
sudo apt install vlc zsh gnome-shell-extension-manager gnome-shell-extensions oneko dconf-editor git curl wget openjdk-18-jdk build-essential gimp blender gnome-tweaks gnome-software-plugin-flatpak flatpak -y


# Add Flathub repository and install Flatpak applications
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

: '
| Column 1           | Column 2      | Column 3    |
|--------------------|---------------|-------------|
|                    | Palette       | kdenlive    |
| bitwarden          | Inkscape      | unlockr     |
| Blanket            |               | WhatsAppDesktop |
| gcolor3            | Todoist       | Obsidian    |
| Client             | Compass       | firefox     |
'

flatpak install flathub 
# Add Flathub repository and install Flatpak applications
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

: '
| Column 1           | Column 2      | Column 3    |
|--------------------|---------------|-------------|
| avvie              | Palette       | kdenlive    |
| bitwarden          | Inkscape      | unlockr     |
| Blanket            | Postman       | WhatsAppDesktop |
| gcolor3            | Todoist       | Obsidian    |
| Client             | Compass       | firefox     |
'

flatpak install flathub com.github.taiko2k.avvie org.gnome.design.Palette org.kde.kdenlive com.bitwarden.desktop org.inkscape.Inkscape com.github.jkotra.unlockr com.rafaelmardojai.Blanket com.getpostman.Postman io.github.mimbrero.WhatsAppDesktop nl.hjdskes.gcolor3 com.todoist.Todoist md.obsidian.Obsidian com.spotify.Client com.mongodb.Compass org.mozilla.firefox


# Install Node.js using NodeSource repository
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - && sudo apt-get install -y nodejs

# Clone and install Oh My Zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git
bash ohmyzsh/tools/install.sh
