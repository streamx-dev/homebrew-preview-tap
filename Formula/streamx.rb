# Generated with JReleaser 1.17.0 at 2025-04-14T13:25:33.927663086Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-24-g9c5c3d5/streamx-1.0.2-24-g9c5c3d5.zip"
  version "1.0.2-24-g9c5c3d5"
  sha256 "650911d3e8507ec7e142cad33a8d28e475a6d7d964bf710b71f401c5908c51a7"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-24-g9c5c3d5", output
  end
end
