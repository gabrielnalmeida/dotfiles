# Dotfiles

Bem-vindo ao repositório de dotfiles! Este repositório contém minhas configurações pessoais para vários programas e ferramentas que uso no meu ambiente de desenvolvimento.

## Objetivo

Este repositório fornece uma configuração padronizada para meus ambientes de desenvolvimento, incluindo configurações para o shell `zsh`, o sistema de controle de versão `git`, e o zinit para personalização do prompt do terminal.

## Estrutura do Repositório

- `~/.dotfiles/myenv/.zshrc`: Configuração para o shell `zsh`, incluindo plugins, aliases, e opções de personalização.
- `~/.dotfiles/myenv/.gitconfig`: Configuração global do Git, incluindo informações do usuário e aliases de comandos.
- `~/.dotfiles/starship`: Configuração para o Oh My Posh, que altera a aparência do prompt do terminal.

## Instalação

Para configurar o ambiente utilizando os dotfiles, siga estas etapas:

1. **Clone o Repositório**

   Clone este repositório para o seu diretório home ou para qualquer outro local de sua escolha:

   ```bash
   git clone git@github.com:gabrielnalmeida/dotfiles.git ~/.dotfiles
   ```

2. Crie Links Simoólicos
    ```
    sudo pacman -S stow
    ```
    ```
    stow myenv 
    stow starship
    stow nvim
    stow ghostty
    ```

3. Requirements
  - ### .zshrc
    - zoxide - package manager
    - eza - package manager
    - neovim - package manager
    - git-delta - package manager
    ```
    sudo pacman -S eza zoxide neovim git-delta
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
4. Gnome Extensions
  - [AppIndicator and KStatusNotifierItem Support](https://extensions.gnome.org/extension/615/appindicator-support/) 
  - [ArcMenu](https://extensions.gnome.org/extension/3628/arcmenu/)
  - [Blur My Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/?ref=itsfoss.com)
  - [Dash To Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
  - [GSConnect](https://extensions.gnome.org/extension/1319/gsconnect/)
  - [JustPerfection](https://extensions.gnome.org/extension/3843/just-perfection/)
  - [Unblank](https://extensions.gnome.org/extension/1414/unblank/)
  - [Vitals](https://extensions.gnome.org/extension/1460/vitals/)
  - [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
  - [Dynamic Music Pill](https://extensions.gnome.org/extension/9334/dynamic-music-pill/)
5. Applications
  - Zed `curl -f https://zed.dev/install.sh | sh`
  - Chrome `yay -S google-chrome`
  - Discord `flatpak install flathub com.discordapp.Discord`
  - Postman `flatpak install flathub com.getpostman.Postman`
  - Github Desktop `flatpak install flathub io.github.shiftey.Desktop`
  - Obsidian `sudo pacman -S obsidian`
  - Ghostty `sudo pacman -S ghostty`
  - CopyQ `sudo pacman -S copyq`
  - Pi `curl -fsSL https://pi.dev/install.sh | sh`
6. Pi Extensions
  - pi-markdown-preview
  - @aliou/pi-processes
  - @juicesharp/rpiv-todo
  - @juicesharp/rpiv-ask-user-question
  - pi-lens
  - pi-rtk-optimizer
  - @juicesharp/rpiv-web-tools
  - @juicesharp/rpiv-advisor
  - @juicesharp/rpiv-pi
  - @tintinweb/pi-subagents
  - @juicesharp/rpiv-btw
  - @juicesharp/rpiv-i18n
  - @juicesharp/rpiv-args
