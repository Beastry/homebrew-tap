cask "stow" do
  version "0.1.7"
  sha256 "61d0cc9231f2829778f6e6760ff0b300623a9c293974e96a4b1b555c1cb530b2"

  url "https://github.com/Beastry/stow/releases/download/v#{version}/Stow-#{version}.dmg"
  name "Stow"
  desc "Archive utility to browse, preview, extract and pack 30+ formats"
  homepage "https://beastry.github.io/stow/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Uncomment once Sparkle updates ship (#35): Homebrew then leaves upgrades to the app.
  # auto_updates true
  depends_on macos: :tahoe

  app "Stow.app"

  uninstall quit: "app.stow.Stow"

  zap trash: [
    "~/Library/Application Scripts/app.stow.Stow",
    "~/Library/Application Scripts/app.stow.Stow.Engine",
    "~/Library/Application Scripts/app.stow.Stow.FinderSync",
    "~/Library/Application Scripts/app.stow.Stow.QuickLook",
    "~/Library/Containers/app.stow.Stow",
    "~/Library/Containers/app.stow.Stow.Engine",
    "~/Library/Containers/app.stow.Stow.FinderSync",
    "~/Library/Containers/app.stow.Stow.QuickLook",
  ]
end
