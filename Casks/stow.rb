cask "stow" do
  version "0.1.11"
  sha256 "0ac872c01e1faab68d8fed5d1280381a9cd2f5c5fc1f866c46a57b287ae964ef"

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
