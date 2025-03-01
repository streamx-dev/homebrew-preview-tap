# Generated with JReleaser 1.16.0 at 2025-03-01T19:05:50.050931945Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-6-gd44a28c/streamx-1.0.2-6-gd44a28c.zip"
  version "1.0.2-6-gd44a28c"
  sha256 "066379295e4d93dc2890540299ec6b6c0af800289ffd4b41c57b2ed2f2700bee"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-6-gd44a28c", output
  end
end
