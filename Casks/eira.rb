cask "eira" do
  version "0.1.2"
  sha256 "e22a7eb48586ff39073bffaccf3d855900226477f478f93ed0b9094315d53d50"

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
