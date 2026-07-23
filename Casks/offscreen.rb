cask "offscreen" do
  version "1.0.2"
  sha256 "bf3ce415d590563a22a577cd0341e296563cc48e3cec763a8294a8999ad47433"

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
