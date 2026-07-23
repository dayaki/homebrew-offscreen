cask "offscreen" do
  version "1.0.0"
  sha256 "b4bf4608823453e51d95daff978ab0cc8fc2fb3a7c81e47c230d3a639e2ef24a"

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
