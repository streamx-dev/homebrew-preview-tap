# Generated with JReleaser 1.12.0 at 2024-10-25T11:04:27.152817228Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-18-g180894e/streamx-0.3.8-18-g180894e.zip"
  version "0.3.8-18-g180894e"
  sha256 "c2623b143b842e998d7a8d9a82f16555ca4850237f98e8b3d41947774e973300"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8-18-g180894e", output
  end
end
