cask "textmate" do
  version "2.21.1"
  sha256 "3e379123ca3b9c0e6af8724699d69091f4c70fb78127d5fbeae7dde4991a5549"

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
