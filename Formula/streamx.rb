# Generated with JReleaser 1.12.0 at 2024-11-28T11:10:46.250228352Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.0-2-gfa9fbe2/streamx-1.0.0-2-gfa9fbe2.zip"
  version "1.0.0-2-gfa9fbe2"
  sha256 "37bee34f25eef1f68e1dcc918f2d20b7037c10cbb4a74e0c601e111a1a1f5dbc"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.0-2-gfa9fbe2", output
  end
end
