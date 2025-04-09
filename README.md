# INSTALAR VIM Y/O NEOVIM DESDE CERO

## Instalacion

bash

```bash
sudo apt update
sudo apt install neovim
```
## Instalacion del gestor de plugins

```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```

## Crear configuracion base
```bash
mkdir -p ~/.config/nvim
vim ~/.config/nvim/init.vim
```

## Instalar los plugins
Abre vim o nvim
Escribe:

```bash
:PlugInstall
```


## Pasos para desinstalar vim/nvim

Eliminar configuracion de plugins

```bash
# Eliminar config de Vim
rm -rf ~/.vim ~/.vimrc ~/.viminfo

# Eliminar config de Neovim
rm -rf ~/.config/nvim ~/.local/share/nvim ~/.cache/nvim

```

### Desinstalar programas
```bash 
sudo apt remove --purge vim neovim
sudo apt autoremove
```

### Verificar que estén fuera del sistema
```bash
which vim
which nvim

```
