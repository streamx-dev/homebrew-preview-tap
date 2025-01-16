# Generated with JReleaser 1.15.0 at 2025-01-16T15:08:45.18270018Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-14-gc6a1ad5/streamx-1.0.1-14-gc6a1ad5.zip"
  version "1.0.1-14-gc6a1ad5"
  sha256 "833696d04e09828a5b707c9dbddd1efa993becb2f305270dbf2860169b8391c4"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-14-gc6a1ad5", output
  end
end
