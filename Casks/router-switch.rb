cask "router-switch" do
  arch arm: "aarch64-apple-darwin", intel: "x86_64-apple-darwin"

  version "0.1.4"
  sha256 arm:   "47108087ebc4bf1b1312f7e30967fe3e93a34351c030f78ad97eb7f2bf76a147",
         intel: "93fff8fcb0b18c39b7529a558aed8a5294005ba8129e383d971c31520109b5dd"

  url "https://github.com/aohun/router-switch/releases/download/v#{version}/Router-Switch-#{version}-#{arch}.dmg",
      verified: "github.com/aohun/router-switch/"
  name "Router Switch"
  desc "Next-Generation AI Gateway Desktop Tool & Provider Hub"
  homepage "https://github.com/aohun/router-switch"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Router Switch.app"

  zap trash: [
    "~/.router-switch",
    "~/Library/Application Support/com.routerswitch.app",
    "~/Library/Caches/com.routerswitch.app",
    "~/Library/Preferences/com.routerswitch.app.plist",
    "~/Library/Saved Application State/com.routerswitch.app.savedState",
  ]
end
