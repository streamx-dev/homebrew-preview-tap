# Generated with JReleaser 1.15.0 at 2025-01-07T10:11:19.957158257Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-10-g20f4f59/streamx-1.0.1-10-g20f4f59.zip"
  version "1.0.1-10-g20f4f59"
  sha256 "09b5578663237ab75d9fe3270b7af5bbc45bca88fdd2fe16cd8ce03483ef2c3b"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-10-g20f4f59", output
  end
end
