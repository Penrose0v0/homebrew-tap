cask "eira" do
  version "0.1.0"
  sha256 "e2c02df10bb3dd9061b59b071ada14892bbb9b385d7f6ab80bf83ec1d288591b"

  url "https://github.com/Penrose0v0/homebrew-tap/releases/download/v#{version}/Eira.zip"
  name "Eira"
  desc "Fully-local personal AI assistant"
  homepage "https://github.com/Penrose0v0/homebrew-tap"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Eira.app"

  zap trash: [
    "~/Library/Application Support/com.eira.app",
    "~/Library/Preferences/com.eira.app.plist",
  ]
end
