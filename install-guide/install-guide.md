# Guide on how Neovim can be setup for Latex 

This guide assumes that Latex is already installed. If not I recommend installing using MikTex, which can are available for Manjaro in the AUR-repository or for Debian based systems via [miktex.org](https://miktex.org).

## What to install

There are different ways to install the system, but it boils down to the following installation steps.

- Install programs via `apt` or `pacman`:
  - neovim
  - nodejs
  - python3
  - xdotool (used by vimtex-plugin)
  - zathura-pdf-poppler
  - zathura
- Install via `pip3 install`
  - pynvim
- Download from website
  - Zotero 
- Vim plugins
  - vim-plug (plugin manager)
  - vimtex


## Notes on how to install and configure

### Install programs with `pacman`

```
sudo pacman -Syu neovim nodejs python3 xdotool zathura-pdf-poppler zathura
```


### Install python packages

```
pip3 install pynvim
```

### Zotero

Follow installation instructions on [zotero.org](https://www.zotero.org/).

### Vim plugins

There are several ways to install plugins for Neovim. Here it is assumed that the plugin manager of choice is `vim-plug`

```
$ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Now add the needed plugins between the tags `call plug` in the `init.vim` as shown here:

```
call plug#begin()
    Plug 'lervag/vimtex' 
    Plug 'https://github.com/cocopon/iceberg.vim.git' 
call plug#end()
```

To actully install the plugins, run the `PlugInstall` from the command line in Neovim.

### Configure `vimtex` and a few commands

`vimtex` needs to be configured. Add the following to `init.vim`:

```
let g:tex_flavor = 'latex'
```

A few useful `vimtex`-commands:

- `:h vimtex` for the help text.
- `:VimtexCountWords`
- `:VimtexClean`
- `:VimtexCompile` toggles auto-compile at save on and off (when supported)
:VimtexTocOpen
:VimtexTocToggle
:VimtexStop
::VimtexStatus
:VimtexView















