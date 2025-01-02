# Generated with JReleaser 1.15.0 at 2025-01-02T09:02:57.696071965Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-7-gd25690d/streamx-1.0.1-7-gd25690d.zip"
  version "1.0.1-7-gd25690d"
  sha256 "9b3b7f2c4e7f1447442e5ef68de3989ccaa9f601ff6de484569eabb3e8d5a2b5"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-7-gd25690d", output
  end
end
