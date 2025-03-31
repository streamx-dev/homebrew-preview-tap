# Generated with JReleaser 1.16.0 at 2025-03-31T13:02:55.256639262Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-19-g7ea98a1/streamx-1.0.2-19-g7ea98a1.zip"
  version "1.0.2-19-g7ea98a1"
  sha256 "2060ba8cb69420735e277b71d92c25a74ac0b75c230887064152a92f0ff2df4c"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-19-g7ea98a1", output
  end
end
