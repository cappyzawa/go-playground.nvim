# go-playground.nvim

[![GitHub release](https://img.shields.io/github/release/cappyzawa/go-playground.nvim.svg)](https://github.com/cappyzawa/go-playground.nvim/releases)
[![GitHub](https://img.shields.io/github/license/cappyzawa/go-playground.nvim.svg)](./LICENSE)

A neovim plugin for [The Go Playground](https://go.dev/play) and [The Gotip Playground](https://gotipplay.golang.org/) written by lua.

## Requirements

* Neovim v0.5.0+
* curl
* open (This plugin does not support windows yet.)

## How to install

```vim
Plug 'cappyzawa/go-playground.nvim'
```

## How to use

```vim
" The Go Playground
:GoPlayground


" The Gotip Playground
:GotipPlayground
```
