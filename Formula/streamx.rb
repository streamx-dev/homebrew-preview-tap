# Generated with JReleaser 1.16.0 at 2025-02-25T16:18:45.613834214Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-7-g9568ba0/streamx-1.0.2-7-g9568ba0.zip"
  version "1.0.2-7-g9568ba0"
  sha256 "d762727758097c82b2f2ba88981e9f5bca3ddc0699004659168a920e30566c4a"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-7-g9568ba0", output
  end
end
