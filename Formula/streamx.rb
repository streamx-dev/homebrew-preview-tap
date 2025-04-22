# Generated with JReleaser 1.17.0 at 2025-04-22T14:04:42.145858038Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-25-g28bf730/streamx-1.0.2-25-g28bf730.zip"
  version "1.0.2-25-g28bf730"
  sha256 "ec6b96636f5ca9ded566eecf6e0d6914047bfe5f4f6a7cea0099b057711aa38c"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-25-g28bf730", output
  end
end
