# Detelin's dotfiles

These dotfiles are managed using [chezmoi](https://www.chezmoi.io/).

Feel free to reference or re-use (at your own risk).


## What I use

| Tools                | Description                                                                                         |
| -------------------- | --------------------------------------------------------------------------------------------------- |
| Operating System     | [Manjaro](https://manjaro.org )                                                                     |
| Desktop Environment  | [Xfce](https://xfce.org)                                                                            |
| Terminal Emulator    | [XFCE Terminal](https://docs.xfce.org/apps/terminal/start)                                          |
| Package Manager      | [Pacman](https://pacman.archlinux.page)                                                             |
| Unix Shell           | [Zsh shell](https://www.zsh.org)                                                                    |
| Dotfiles Manager     | [chezmoi](https://chezmoi.io)                                                                       |

## Getting started

Check out the [Quick Start](https://www.chezmoi.io/quick-start/) page.

### Install chezmoi and the dotfiles on any new machine

```sh
sudo pacman -S chezmoi # Arch or Manjaro

chezmoi init --apply --verbose https://github.com/detelin/dotfiles.git

chezmoi init --apply --verbose detelin
```

or

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply detelin
```

### Update

On any machine, you can pull and apply the latest changes from your repo with:

```sh
chezmoi update -v
```

### Prompts

For [managing machine-to-machine differences](https://www.chezmoi.io/user-guide/manage-machine-to-machine-differences/).

To add/remove/edit prompts:

```sh
vim ~/.local/share/chezmoi/.chezmoi.toml.tmpl
```

To test templates, use `chezmoi execute-template < dot_gitconfig.tmpl` ([ref](https://www.chezmoi.io/user-guide/templating/#testing-templates)).

### `run_once_install-packages.sh` script

The [`run_once_install-packages.sh`](run_once_install-packages.sh) script runs with the following assumptions (i.e. requirements):

-   `bash` is installed.

Check out the [Understand How Scripts Work](https://www.chezmoi.io/user-guide/use-scripts-to-perform-actions/#understand-how-scripts-work) page.

## Reference

[How To Manage Dotfiles With Chezmoi](https://jerrynsh.com/how-to-manage-dotfiles-with-chezmoi/)

## Useful URLs
https://github.com/ngshiheng/dotfiles

https://github.com/Artmorse/dotfiles
