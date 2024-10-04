# Dotfiles

Bem-vindo ao repositório de dotfiles! Este repositório contém minhas configurações pessoais para vários programas e ferramentas que uso no meu ambiente de desenvolvimento.

## Objetivo

Este repositório fornece uma configuração padronizada para meus ambientes de desenvolvimento, incluindo configurações para o shell `zsh`, o sistema de controle de versão `git`, e o Oh My Posh para personalização do prompt do terminal.

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
    ln -s ~/.dotfiles/.zshrc ~/.zshrc
    ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
    ln -s ~/.dotfiles/ohmyposh ~/.config/ohmyposh
    ```

3. Requirements
  - zoxide - package manager
  - eza - package manager
  - [nvm](https://nodejs.org/en/download/package-manager)
  - [ohmyposh](https://ohmyposh.dev/docs/installation/linux)
  - [fzf](https://github.com/junegunn/fzf.git)
  - [pokemon-colorscripts](https://gitlab.com/phoneybadger/pokemon-colorscripts#installation)
  - composer - package manager
