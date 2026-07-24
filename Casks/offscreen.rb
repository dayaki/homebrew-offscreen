cask "offscreen" do
  version "1.0.4"
  sha256 "2233edc8031d4a62321c1e88211f3910220902ad59bffdcc0ed7f075f85afaf0"

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
