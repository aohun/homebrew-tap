cask "router-switch" do
  arch arm: "aarch64-apple-darwin", intel: "x86_64-apple-darwin"

  version "0.1.6"
  sha256 arm:   "1bfc6ea4f71fda38404936834dd7ccfc395dc945c9b7a4d1f2956cc96acfb5a1",
         intel: "222ecf3c60579b6b59cd17876a0577e7815fcf1ac9282752050701bb7ecedc47"

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
