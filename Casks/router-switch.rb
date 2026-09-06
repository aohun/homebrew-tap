cask "router-switch" do
  arch arm: "aarch64-apple-darwin", intel: "x86_64-apple-darwin"

  version "0.1.5"
  sha256 arm:   "603ef31433fb42baca5785dd03860d1b88a6923b8f1920ff78a1cd9a7aedfa90",
         intel: "4f6e1007938d96a54f2ba40978f1688b49463643533f410116240dff84d12a14"

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
