# Generated with JReleaser 1.15.0 at 2025-01-17T09:52:27.587722821Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-15-gb8f3e6e/streamx-1.0.1-15-gb8f3e6e.zip"
  version "1.0.1-15-gb8f3e6e"
  sha256 "3b1839ade9a2a1f6913d52c9dac62dafa896df6e1de04351a43c6d5e8e7a5ab7"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-15-gb8f3e6e", output
  end
end
