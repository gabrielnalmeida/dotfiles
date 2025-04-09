# Dotfiles

Bem-vindo ao repositório de dotfiles! Este repositório contém minhas configurações pessoais para vários programas e ferramentas que uso no meu ambiente de desenvolvimento.

## Objetivo

Este repositório fornece uma configuração padronizada para meus ambientes de desenvolvimento, incluindo configurações para o shell `zsh`, o sistema de controle de versão `git`, e o zinit para personalização do prompt do terminal.

## Estrutura do Repositório

- `~/.dotfiles/.zshrc`: Configuração para o shell `zsh`, incluindo plugins, aliases, e opções de personalização.
- `~/.dotfiles/.gitconfig`: Configuração global do Git, incluindo informações do usuário e aliases de comandos.
- `~/.dotfiles/ohmyposh`: Configuração para o Oh My Posh, que altera a aparência do prompt do terminal.

## Instalação

Para configurar o ambiente utilizando os dotfiles, siga estas etapas:

1. **Clone o Repositório**

   Clone este repositório para o seu diretório home ou para qualquer outro local de sua escolha:

   ```bash
   git clone git@github.com:gabrielnalmeida/dotfiles.git ~/.dotfiles

2. Crie Links Simoólicos
    ```
    sudo pacman -S stow
    ```
    ```
    stow myenv 
    stow ohmyposh
    stow nvim
    stow hyprland
    ```

3. Requirements
  - ### environment
    - neovim - package manager
    - git-delta - package manager
    ```
    sudo pacman -S neovim git-delta
    ```
  - ### .zshrc
    - zoxide - package manager
    - eza - package manager
    - composer - package manager
    ```
    sudo pacman -S eza zoxide composer
    ```
    - [nvm](https://nodejs.org/en/download/package-manager)
    ```
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
    ```
    - [starship](https://starship.rs/)
    ```
    curl -sS https://starship.rs/install.sh | sh
    ```
    - [fzf](https://github.com/junegunn/fzf.git)
    ```
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
    ```

  - ### SDDM
    ```bash
    sudo pacman -Sy sddm qt5-graphicaleffects qt5-svg qt5-quickcontrols2
    ```
    ```
    sudo cp -r ~/.dotfiles/sddm/boo /usr/share/sddm/themes && sudo cp ~/.dotfiles/sddm/sddm.conf /etc
    ```

  - ### hyprland
    -  kitty - package manager
    - waybar - Repository
    - hypridle - package manager
    - hyprlock - package manager
    - hyprpaper - package manager
    - hyprshot - package manager
    ```
    sudo pacman -S swaync kitty hypridle hyprlock hyprpaper hyprshot
    ```
    ```
    git clone https://aur.archlinux.org/waybar-git.git 
    # change cava to enable in the PKGBUILD
    makepkg -si
    ```
