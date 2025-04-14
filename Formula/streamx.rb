# Generated with JReleaser 1.17.0 at 2025-04-14T13:24:14.423355705Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-24-g9c5c3d5/streamx-1.0.2-24-g9c5c3d5.zip"
  version "1.0.2-24-g9c5c3d5"
  sha256 "7e8e0ffe54bf12e78665906740b2d47c023cea3f542309954810817f7a892ecb"
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
