cask "stow" do
  version "0.1.8"
  sha256 "5237755cedcef3833f1e3a26482368b0427b91159879bae46ed44194ecfe85d2"

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
