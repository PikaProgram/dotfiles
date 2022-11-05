#!/bin/sh

DOTFILES_LOCATION="$HOME/.dotfiles"

install_packages() {
    echo "Installing Packages"

    sudo apt update
    sudo apt install git wget ruby-dev zsh build-essential neofetch tmux -y

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/jenv/jenv.git ~/.jenv
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
    
    gem install colorls
}

clone_dotfiles() {
    echo "Cloning Dotfiles From Repo"

    git clone https://github.com/PikaProgram/dotfiles.git $DOTFILES_LOCATION
}

link_files() {
    echo "Linking DotFiles.."

    cd $DOTFILES_LOCATION
    ln -sf "$DOTFILES_LOCATION/tmux/.tmux.conf" "$HOME/.tmux.conf" 
    ln -sf "$DOTFILES_LOCATION/tmux/.tmux.conf.local" "$HOME/.tmux.conf.local"
    ln -sf "$DOTFILES_LOCATION/.zshrc" "$HOME/.zshrc"
    ln -sf "$DOTFILES_LOCATION/.p10k.zsh" "$HOME/.p10k.zsh"
}

install_packages
clone_dotfiles
link_files

echo "Done!"
