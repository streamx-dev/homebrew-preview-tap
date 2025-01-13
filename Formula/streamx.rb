# Generated with JReleaser 1.15.0 at 2025-01-13T13:55:31.275941897Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-11-gf070665/streamx-1.0.1-11-gf070665.zip"
  version "1.0.1-11-gf070665"
  sha256 "a89921f99bf15d2b2cc5cae13d8229406946f7f588ca4150a57f3c771f3d91d3"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-11-gf070665", output
  end
end
