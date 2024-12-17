# Generated with JReleaser 1.15.0 at 2024-12-17T11:56:47.030831534Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.0-10-g9050a8d/streamx-1.0.0-10-g9050a8d.zip"
  version "1.0.0-10-g9050a8d"
  sha256 "2e61ac5c358274727dedf7b029c8d00298e17ecb82e0487ab12b652938b510ff"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.0-10-g9050a8d", output
  end
end
