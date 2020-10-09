# Install guide for Latex and setting up Neovim

The aim of these instructions is to install Latex and make it work well with
Neovim via plugins. First I will provide an overview of the programs and
plugins that I recommend. Many users might find that fully sufficient to
install and setup Latex and Neovim. However, in the second section I provide
more details on the installation and setup procedure on a Manjaro Linux system.

## Overview

The minimum applications and tools need:


|Name|Install&nbsp;type| Descriptin |
|---|---|---|
|[MikTex](https://miktex.org/)|paman-manager|MikTex is a distribution of Latex, that contains a nice package manager. On Manjaro Linux it must be installed through the AUR repository.|
|[neovim](https://neovim.io/)|pacman|Neovim is the hyperextensible Vim-based editor.|
|[nodejs](https://nodejs.org/)|pacman|A JavaScript runtime that provides asynchronous event handling.|
|[python3](https://python.org)|pacman|Interpreter for programs wrtitten in python.|
|[xdotool](https://www.semicomplete.com/projects/xdotool/)|pacman|Tool that simulates keyboard input and mouse activity, which is need by the vimtex-plugin.|
|[zathura](https://pwmt.org/)|pacman|A light weight document viewer with vim-like keybindings.|
|[zathuraq-pdf-poppler](https://pwmt.org/projects/zathura-pdf-poppler/)|pacman|Pdf-plugin for Zathura. Use this instead of zathura-pdf-mupdf, which dosn't seem to work with vimtex.|
|[pynvim](https://github.com/neovim/pynvim)|pip3|Support for python plugins is provided by pynvim.|
|[vim-plug](https://github.com/junegunn/vim-plug)|plugin|This is a plugin manager for Neovim, but others will also work|
|[vimtex](https://github.com/lervag/vimtex)|plugin|A plugin that integrates Latex and Zathura.|
|[Zotero](https://www.zotero.org/)|download and unzip|Zotero is a citation manager. It is not required for Latex, but a great tool.|

## Installation and setup

The installation has three main parts. The first is installing Latex (MikTex).
The second part is the installation of supplementary applications and plugins.
The third part setting it all up, i.e. configuring vimtex.

### Latex install with MikTex and initial setup

The installation and setting up Latex with MikTex is, except one small part, a
process that is fully done using the graphical user interface.

1. On Manjaro Linux, the MikTex distribution of Latex, must be installed using
   the GUI package manager, pamac-manager, from the AUR repository. For Debian
   based systems see instructions on [miktex.org](https://miktex.org/).
2. Open `MikTex Console` # ...

### Install the additional applications and plugins

Install packages with `pacman`:

```
$ sudo pacman -Syu neovim nodejs python3 xdotool zathura-pdf-poppler zathura
```

Install the python package with `pip3`:

```
$ pip3 install pynvim
```

Install Vim (Neovim) plugins. If the system does not already have a plugin
manager, then install `vim-plug`:

```
$ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Now add the needed plugins between the tags `call plug` in the `init.vim` as
shown here:

```
call plug#begin()
    Plug 'lervag/vimtex' 
    Plug 'https://github.com/cocopon/iceberg.vim.git' 
call plug#end()
```

Then run `:PlugInstall` from the command line in Neovim.

### Configure `vimtex` and a few commands

`vimtex` needs to be configured. Add the following to `init.vim`:

```
let g:tex_flavor = 'latex'
let g:latex_view_general_viewer = 'zathura'
let g:vimtex_view_method = 'zathura'
```

A few useful `vimtex`-commands for which you may want to add your own
keybindings:

- `:h vimtex` for the help text.
- `:VimtexCompile` starts auto-compile at save on and off (when supported).
- `:VimtexStop` stops the compiler.
- `:VimtexStatus` shows status of the compiler.
- `:vimtexInfo` shows useful information.
- `:VimtexView` opens the pdf-viewer.
- `:VimtexClean` deletes temprary files forcing re-write Latex compile.
- `:VimtexCountWords` counts words.
- `:VimtexTocOpen` open the table of contents.
- `:VimtexTocToggle` toggle table of contents.















