cask "keylapse" do
  version "0.1.2"
  sha256 "a1f1cc406e3b6335167b4a34ca605e70c653f2b1f768ed81258323d6cee80c32"

  url "https://github.com/openchamber/keylapse/releases/download/v#{version}/Keylapse-#{version}.zip"
  name "Keylapse"
  desc "Switch keyboard layouts and fix text typed in the wrong one"
  homepage "https://github.com/openchamber/keylapse"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Keylapse.app"

  zap trash: [
    "~/Library/Application Support/Keylapse",
    "~/Library/Caches/com.openchamber.keylapse",
    "~/Library/Preferences/com.openchamber.keylapse.plist",
  ]
end
