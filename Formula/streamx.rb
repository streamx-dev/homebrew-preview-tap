# Generated with JReleaser 1.12.0 at 2024-11-20T16:51:16.736008418Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.9-6-g8d0d3d7/streamx-0.3.9-6-g8d0d3d7.zip"
  version "0.3.9-6-g8d0d3d7"
  sha256 "f585d02eb2c9ea16100390e6be1d91302de6dfb6fc20f42a821f91dcbb75b41f"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.9-6-g8d0d3d7", output
  end
end
