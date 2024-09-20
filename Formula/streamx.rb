# Generated with JReleaser 1.12.0 at 2024-09-20T11:46:07.397846831Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-5-g7013108/streamx-0.3.8-5-g7013108.zip"
  version "0.3.8-5-g7013108"
  sha256 "6282b67d5d9adb6f86c9d0d7acbdf77eac8756811a5e8ad81c0518bc5d693b2f"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8-5-g7013108", output
  end
end
