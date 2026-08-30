cask "router-switch" do
  arch arm: "aarch64-apple-darwin", intel: "x86_64-apple-darwin"

  version "0.1.3"
  sha256 arm:   "330ca94e96a0e8341ec12be733936011e41a510f0acc00de6ff7c273c9af66c3",
         intel: "6dec280e921526b992d78f2e58f97a76a56a8e6e0444c6e21166662342ae51b9"

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
