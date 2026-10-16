cask "kexp" do
  version "1.0"
  sha256 "f3c65b1c36c1bd2f70407e7edec1df8bc9d4e00362af45bd275b1b35b8c2e989"

  url "https://github.com/gosborn/kexp-menu-bar/releases/download/v#{version}/KEXP.zip"
  name "KEXP Menu Bar"
  desc "Menu bar player for KEXP 90.3 FM"
  homepage "https://github.com/gosborn/kexp-menu-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "KEXP.app"

  uninstall quit: "com.gosborn.kexp-menu-bar"

  zap trash: [
    "~/Library/Application Support/KEXP Menu Bar",
    "~/Library/Preferences/com.gosborn.kexp-menu-bar.plist",
  ]
end
