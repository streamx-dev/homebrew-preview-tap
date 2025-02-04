# Generated with JReleaser 1.15.0 at 2025-02-04T12:08:37.703668422Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-20-g2ff519b/streamx-1.0.1-20-g2ff519b.zip"
  version "1.0.1-20-g2ff519b"
  sha256 "aefea90c7684377e0588ee6d3d12fc18d1426a9ee773195258e840ccc5702822"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-20-g2ff519b", output
  end
end
