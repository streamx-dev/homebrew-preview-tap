# Generated with JReleaser 1.12.0 at 2024-06-12T13:57:59.055897446Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.3-18-g0b66ca7/streamx-0.3.3-18-g0b66ca7.zip"
  version "0.3.3-18-g0b66ca7"
  sha256 "27bc5212a539d4f6d863d679dc6e27b020d4eb4304de3dab10ba779defe2518b"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.3-18-g0b66ca7", output
  end
end
