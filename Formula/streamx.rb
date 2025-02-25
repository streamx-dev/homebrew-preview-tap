# Generated with JReleaser 1.15.0 at 2025-02-25T12:02:27.664714244Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-5-g1a9f48d/streamx-1.0.2-5-g1a9f48d.zip"
  version "1.0.2-5-g1a9f48d"
  sha256 "00a6d18aa29c6827a0eec533370a29f35dbe15a3fbc417ddef276830e4bd737a"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-5-g1a9f48d", output
  end
end
