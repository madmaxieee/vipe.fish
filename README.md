# vipe.fish

A fish port of [juliangruber/vipe](https://github.com/juliangruber/vipe). Edit your pipes with your favorite `$EDITOR` like a real UNIX wizard.

## Installation

Install with [fisher](https://github.com/jorgebucaran/fisher) plugin manager:

```sh
fisher install madmaxieee/vipe.fish
```

## Usage

```sh
# This will open an editor with the text "change me" loaded
$ echo change me | vipe | tr '[:lower:]' '[:upper:]'
CHANGED
```
