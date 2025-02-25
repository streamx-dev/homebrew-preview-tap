# Generated with JReleaser 1.16.0 at 2025-02-25T16:19:26.603230627Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-7-g9568ba0/streamx-1.0.2-7-g9568ba0.zip"
  version "1.0.2-7-g9568ba0"
  sha256 "3a8ac45c2f267273213c1dc8d95a18aef7a7e77dc4b582b6380653faaf61627b"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-7-g9568ba0", output
  end
end
