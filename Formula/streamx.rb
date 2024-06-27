# Generated with JReleaser 1.12.0 at 2024-06-27T12:58:37.30983264Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.3-14-gf6f1e57/streamx-0.3.3-14-gf6f1e57.zip"
  version "0.3.3-14-gf6f1e57"
  sha256 "ee3dbf450b11c8ed9d7d51a47e2df03362ace89cf929f6174c63b401beea1341"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.3-14-gf6f1e57", output
  end
end
