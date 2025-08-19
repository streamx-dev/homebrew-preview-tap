# Generated with JReleaser 1.17.0 at 2025-08-19T12:49:42.920962372Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.1.2-2-g1e64652/streamx-1.1.2-2-g1e64652.zip"
  version "1.1.2-2-g1e64652"
  sha256 "d374f095c5c34093e175dc4a67e141c439a53dad059a65dc4b6097cae057b7ca"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.1.2-2-g1e64652", output
  end
end
