# Generated with JReleaser 1.15.0 at 2025-02-15T12:29:02.95105304Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-2-g05ac924/streamx-1.0.2-2-g05ac924.zip"
  version "1.0.2-2-g05ac924"
  sha256 "0d8a8eb3d21dc4edcaddec97850c35c774693555b23303abc2325c632243558a"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-2-g05ac924", output
  end
end
