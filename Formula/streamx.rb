# Generated with JReleaser 1.12.0 at 2024-06-14T08:02:15.04763483Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.3-11-g4a6b8b7/streamx-0.3.3-11-g4a6b8b7.zip"
  version "0.3.3-11-g4a6b8b7"
  sha256 "4eee324429510ce728254b638dab8db5963e46995185c2ce1037d00e33d76fd1"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.3-11-g4a6b8b7", output
  end
end
