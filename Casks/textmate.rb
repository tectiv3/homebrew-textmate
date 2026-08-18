cask "textmate" do
  version "2.19.0"
  sha256 "b3d2b8029d03e677e01dfdc730b32a58b37524f2223cb91865d1f28f897dc9e2"

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
