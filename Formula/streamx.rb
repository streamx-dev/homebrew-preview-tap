# Generated with JReleaser 1.16.0 at 2025-03-03T14:05:41.53707668Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-7-gd02e56a/streamx-1.0.2-7-gd02e56a.zip"
  version "1.0.2-7-gd02e56a"
  sha256 "d890def68c3d9fff7a7f9ad8d2590aa92134534a7866940999ead1ccd02b1217"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-7-gd02e56a", output
  end
end
