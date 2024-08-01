# Generated with JReleaser 1.12.0 at 2024-08-01T15:51:27.585425054Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.6-2-g1e42ae3/streamx-0.3.6-2-g1e42ae3.zip"
  version "0.3.6-2-g1e42ae3"
  sha256 "d23bb876dc943f6d6bf17b18939560c901e20365e5af3e226e7e05ad73438ce2"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.6-2-g1e42ae3", output
  end
end
