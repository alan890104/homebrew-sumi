cask "sumi" do
  version "0.5.5"
  sha256 "c0f0471cd584d4e59f5cd6ebdb04d90ebc854a74e5410438c9957ccc8fcf79a8"

  url "https://github.com/alan890104/sumi/releases/download/v#{version}/Sumi_#{version}_aarch64.dmg"
  name "Sumi"
  desc "System-wide speech-to-text with AI polish for macOS"
  homepage "https://github.com/alan890104/sumi"

  depends_on arch: :arm64

  app "Sumi.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Sumi.app"]
  end

  zap trash: [
    "~/.sumi",
    "~/Library/Caches/com.sumivoice.app",
    "~/Library/Caches/sumi",
    "~/Library/WebKit/com.sumivoice.app",
    "~/Library/WebKit/sumi",
  ]
end
