# dotfiles

My personal dotfiles managed with Nix and home-manager.

## Setup

1. Install Nix

```bash
   curl -sSfL https://artifacts.nixos.org/nix-installer | sh -s -- install
   . /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
```

2. Clone and apply

```bash
   git clone https://github.com/nononoexe/dotfiles ~/dotfiles
   cd ~/dotfiles
   nix run home-manager -- switch --flake .#nononoexe
   exec bash
```


## Enable direnv

```bash
   echo "use flake" > .envrc
   direnv allow
```

The environment will be automatically activated when you enter the directory.


## Updating home-manager

```bash
   hms # alias for: home-manager switch --flake ~/dotfiles#nononoexe
```
