cask "textmate" do
  version "2.22.2"
  sha256 "92d88e6a3cd8eee98bbc14294a1e986043623ed76c071aafd754c6615e736840"

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
