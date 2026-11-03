# Beastry Homebrew tap

Custom Homebrew tap for [Beastry](https://beastry.app) apps.

## Install Stow

```sh
brew install --cask Beastry/tap/stow
```

(`Beastry/homebrew-tap` is addressed as `Beastry/tap` — Homebrew drops the `homebrew-` prefix.)

## Layout

- `Casks/stow.rb` — Stow macOS cask (DMG from [Beastry/stow](https://github.com/Beastry/stow) releases)

Cask files are updated automatically when a GitHub release is **published** on Beastry/stow (not on draft).
