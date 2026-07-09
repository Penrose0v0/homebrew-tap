cask "eira" do
  version "0.1.1"
  sha256 "ce0fda41f5da97874c91eac7dfa82e45fa73d6c84b4b433fff711b18155d25d5"

  url "https://github.com/Penrose0v0/homebrew-tap/releases/download/v#{version}/Eira.zip"
  name "Eira"
  desc "Fully-local personal AI assistant"
  homepage "https://github.com/Penrose0v0/homebrew-tap"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Eira.app"

  # Eira is self-signed (not notarized), so Gatekeeper would block the
  # quarantined app on first launch. Strip the quarantine flag that Homebrew
  # applies, so `brew install` just works with no extra flags.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Eira.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.eira.app",
    "~/Library/Preferences/com.eira.app.plist",
  ]
end
