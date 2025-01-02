# Generated with JReleaser 1.15.0 at 2025-01-02T09:02:21.709688058Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-7-gd25690d/streamx-1.0.1-7-gd25690d.zip"
  version "1.0.1-7-gd25690d"
  sha256 "959f1274599c5faa6251a38ba70395227e5f4c231425fbe515a5df2719f7fd38"
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
