cask "sumi" do
  version "0.3.0"
  sha256 "d5f53967c9411596aaf58d80c07a265555aa0ced85a077cf597fcbc00aefb3ec"

  url "https://github.com/alan890104/sumi/releases/download/v#{version}/Sumi_#{version}_aarch64.dmg"
  name "Sumi"
  desc "System-wide speech-to-text transcription app"
  homepage "https://github.com/alan890104/sumi"

  depends_on arch: :arm64

  app "Sumi.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Sumi.app"]
  end

  zap trash: "~/.sumi"
end
