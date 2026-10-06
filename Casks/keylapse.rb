cask "keylapse" do
  version "0.1.1"
  sha256 "5e517543d29ca718a3d8059c05d03f6177ed8ae5faeef9501a7f6fbad06a460b"

  url "https://github.com/openchamber/keylapse/releases/download/v#{version}/Keylapse-#{version}.zip"
  name "Keylapse"
  desc "Switch keyboard layouts and fix text typed in the wrong one"
  homepage "https://github.com/openchamber/keylapse"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Keylapse.app"

  zap trash: [
    "~/Library/Application Support/Keylapse",
    "~/Library/Caches/com.openchamber.keylapse",
    "~/Library/Preferences/com.openchamber.keylapse.plist",
  ]
end
