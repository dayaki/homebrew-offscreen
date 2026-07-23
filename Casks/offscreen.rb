cask "offscreen" do
  version "1.0.3"
  sha256 "4353f6609c04efb35bb7178087e811842a40439d8ce6e0ca11454e85d199e61a"

  url "https://github.com/dayaki/offscreen/releases/download/v#{version}/Offscreen-#{version}.zip",
      verified: "github.com/dayaki/offscreen/"
  name "Offscreen"
  desc "Smart screen breaks for macOS that know when not to interrupt"
  homepage "https://github.com/dayaki/offscreen"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Offscreen.app"

  zap trash: [
    "~/Library/Application Support/Offscreen",
    "~/Library/Preferences/com.dayo.offscreen.plist",
  ]
end
