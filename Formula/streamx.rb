# Generated with JReleaser 1.16.0 at 2025-03-31T13:03:57.252026047Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-19-g7ea98a1/streamx-1.0.2-19-g7ea98a1.zip"
  version "1.0.2-19-g7ea98a1"
  sha256 "30e68a4d07d3ea0165cce00d807e0826328c488ee97906feb19fe89ae13051a1"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-19-g7ea98a1", output
  end
end
