# Generated with JReleaser 1.16.0 at 2025-03-17T12:48:52.522439048Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-11-g0e34777/streamx-1.0.2-11-g0e34777.zip"
  version "1.0.2-11-g0e34777"
  sha256 "b8e28c9011bc2471249e182996b0bb4618d9b69a30f69592384348af254bbe84"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-11-g0e34777", output
  end
end
