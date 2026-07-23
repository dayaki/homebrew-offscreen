cask "offscreen" do
  version "1.0.1"
  sha256 "9a11d58ec78edf8f5eed540bb59fca81ace6c56c565882d988dd5d7058dcea2c"

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
