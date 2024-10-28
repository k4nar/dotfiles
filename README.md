# My dotfiles

Dotfiles managed via [chezmoi](https://www.chezmoi.io/).

## Installation

Basic list of requirements: `git, chezmoi, fish, starship, direnv, nvim`

```sh
chezmoi init k4nar --apply
```

Then change the default shell to `fish` or `zsh`:
```sh
chsh
```
In MacOS, `/opt/homebrew/bin/fish` needs to be added to `/etc/shells` if installed via Homebrew.

## Configuration

Configuration options are prompted during the initial install, and can later be edited in ` ~/.config/chezmoi/chezmoi.toml`.
This file is not versioned, but is [templated](./.chezmoi.toml.tmpl).

## Tools I use

Here is a list of of tools I’m using. Some are configured in this repo, others are requirements of other tools (eg: ripgrep for neovim) or nice utils which don’t require configuration.

## CLI

### Shell

[`fish`](https://fishshell.com/) is my main shell. I’ve used ZSH for years, so my conf is in this repo as well.

### Direnv

[Direnv](https://github.com/direnv/direnv) allows to easily set a specific env per directory.

To setup a Python venv:
```
$ echo "layout python" > .envrc
```

### Tmux

Tmux config uses `Ctrl+Space` as prefix.

Main keybindings:
- `Ctrl+Space |` split vertically
- `Ctrl+Space -` split horizontally
- `Shift+<arrow>` move between panes

Dependency with TPM (plugin manager) is optional. See `.tmux.conf` for instructions.

### File utils

- **[ripgrep](https://github.com/BurntSushi/ripgrep)**
    A better grep / ack. Faster and with more features than `ag`. Used by other tools (nvim’s Telescope, VSCode…).
    ```sh
    # search <pattern> in current directory recursively
    $ rg <pattern>
    # case insensitive
    $ rg -i <pattern>
    # search only python files
    $ rg -tpy <pattern>  # or --type py
    # filter using glob
    $ rg -g '*.py' <pattern>
    ```
- **[fd](https://github.com/sharkdp/fd)**
    Easier and faster alternative to find.
    ```sh
    # list files named `*foo*` in the current directory, recursively
    $ fd foo
    # list files ending with .py
    $ fd -e .py
    # exec a command for each found file
    $ fd foo --exec wc -l
    # look for directories
    $ fd --type d
    # look for files
    $ fd --type f
    # exact match
    $ fd -g foo
    ```

### Git
- **[delta](https://github.com/dandavison/delta)**
    Improve Git diff. Included by default in my `.gitconfig`.


## Tips

### Git

- To clone Github repositories:
    ```
    $ git clone gh:user/repo
    ```