# Generated with JReleaser 1.12.0 at 2024-10-21T08:57:22.604879099Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-13-g10751bc/streamx-0.3.8-13-g10751bc.zip"
  version "0.3.8-13-g10751bc"
  sha256 "6974fa54761d437b2864e11ff417c6bd83420e78ca2b33bd4118e397297bb1d2"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8-13-g10751bc", output
  end
end
