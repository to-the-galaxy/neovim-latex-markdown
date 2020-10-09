# Markdown install (plugins)

There are exelent and simple integration between Neovim (Vim) and markdown
documents, and there are several ways to obtain such integration. I find that the following plugins work very well:

* [vim-markdown](https://github.com/plasticboy/vim-markdown)
* [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)

## Simple install 

Install Vim (Neovim) plugins. If the system does not already have a plugin
manager, then install `vim-plug`:

```
$ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Now add the needed plugins between the tags `call plug` in the `init.vim` as
shown here:

```
call plug#begin()
  Plug 'plasticboy/vim-markdown'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()
```

Then run `:PlugInstall` from the command line in Neovim.

## Install css-styling that looks like Github

Run the command:

```
$ sudo pacman -Syu npm
$ npm install github-markdown-css
```

## Add basic configuration to `init.vim`

Add the following to the `init.vim`:

```
let g:mkdp_auto_close=0
let g:mkdp_refresh_slow=1
let g:mkdp_markdown_css='/home/michael/node_modules/github-markdown-css/'
```

## Usage

Start the previewer using `:MarkdownPreview`.
