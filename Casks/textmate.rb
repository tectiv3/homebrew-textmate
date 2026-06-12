cask "textmate" do
  version "2.18.1"
  sha256 "426c8bbf14f9c1bbebd215b44c8afc38e4ee0840b77e19c926258d9636198b8e"

  url "https://github.com/tectiv3/textmate/releases/download/v#{version}/TextMate-#{version}.tar.gz"
  name "TextMate"
  desc "General-purpose text editor (tectiv3 fork)"
  homepage "https://github.com/tectiv3/textmate"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "TextMate.app"
  binary "#{appdir}/TextMate.app/Contents/MacOS/mate"

  uninstall quit: "com.macromates.TextMate"

  zap trash: [
    "~/Library/Application Support/TextMate",
    "~/Library/Caches/com.macromates.TextMate",
    "~/Library/Preferences/com.macromates.TextMate.plist",
    "~/Library/Saved Application State/com.macromates.TextMate.savedState",
  ]
end
