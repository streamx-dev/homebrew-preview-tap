# Generated with JReleaser 1.12.0 at 2024-10-22T09:37:53.183458146Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-16-gaf01ca2/streamx-0.3.8-16-gaf01ca2.zip"
  version "0.3.8-16-gaf01ca2"
  sha256 "e790c7d8ff82ac5bbfe307eb46e9b5e7e70ad99fe9fe998c762d7382b1aea12a"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8-16-gaf01ca2", output
  end
end
