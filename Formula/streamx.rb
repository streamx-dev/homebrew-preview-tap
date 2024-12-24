# Generated with JReleaser 1.15.0 at 2024-12-24T09:28:09.208203417Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.0-12-ge69e909/streamx-1.0.0-12-ge69e909.zip"
  version "1.0.0-12-ge69e909"
  sha256 "9790eb7946b8f2bcf1ec14f89e1762b4ec4d053e9d1dda64c4f2d0601779393b"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.0-12-ge69e909", output
  end
end
