cask "sumi" do
  version "0.5.2"
  sha256 "4b960cb149cb95a68a4d9bd084edfc902f25bac7eff57d1af1c328dd8c5c2f6c"

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
