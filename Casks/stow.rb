cask "stow" do
  version "0.1.6"
  sha256 "a1dbc4329e309cca4426c5e894e320261049699b3cf9be23cc608c0d20d66607"

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
