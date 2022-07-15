# mill completions for fish shell

This is very basic, but works surprisingly well as when using for things like
`mill mymodule.<tab>`. What it doesn't work great for is things like `mill
_.<tab>`. This also adds completions for all flags.

## Installation

Install using [Fisher](https://github.com/jorgebucaran/fisher)

```fish
fisher install ckipp01/mill-fish-completions
```

If you don't use fisher, just can also just make sure the `mill.fish`
file is in your `~/.config/fish/completions/` by either putting it
there or linking it.

```fish
ln -s mill-fish-completions/completions/mill.fish completions/mill.fish
```
