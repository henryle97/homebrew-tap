cask "lookaround" do
  version "0.1.4"
  sha256 "9c8e38d9784e9fe445567f74faad575e932977c638d351a57cacef7162be248f"

  url "https://github.com/henryle97/look-around/releases/download/v#{version}/LookAround-#{version}.dmg"
  name "LookAround"
  desc "Gentle menu-bar break reminders for healthy eyes"
  homepage "https://henryle97.github.io/look-around/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "LookAround.app"

  uninstall quit: "com.lookaround.app"

  zap trash: "~/Library/Preferences/com.lookaround.app.plist"
end
