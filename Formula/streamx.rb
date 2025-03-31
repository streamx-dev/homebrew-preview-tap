# Generated with JReleaser 1.16.0 at 2025-03-31T12:25:44.529914765Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-16-g490db9a/streamx-1.0.2-16-g490db9a.zip"
  version "1.0.2-16-g490db9a"
  sha256 "de49333813a0638026b6775d8e3ffdd1a1f41cc821547efb8c4c0de0da9e165d"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-16-g490db9a", output
  end
end
