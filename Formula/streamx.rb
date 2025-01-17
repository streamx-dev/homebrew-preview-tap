# Generated with JReleaser 1.15.0 at 2025-01-17T11:29:47.491705411Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-17-g38e88bc/streamx-1.0.1-17-g38e88bc.zip"
  version "1.0.1-17-g38e88bc"
  sha256 "a7f58665805207f3abd917ad16f73332b84f741cefbaf3288f49093fc146be2d"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-17-g38e88bc", output
  end
end
