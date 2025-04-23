# Generated with JReleaser 1.17.0 at 2025-04-23T13:53:47.394112003Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-26-g233e870/streamx-1.0.2-26-g233e870.zip"
  version "1.0.2-26-g233e870"
  sha256 "a464d721adc209d146140c8797b8b95e8a772bb0d8ff13921771a73d78719edd"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-26-g233e870", output
  end
end
