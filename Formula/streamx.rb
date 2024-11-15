# Generated with JReleaser 1.12.0 at 2024-11-15T12:47:11.884817955Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.9-3-g8c3b6c5/streamx-0.3.9-3-g8c3b6c5.zip"
  version "0.3.9-3-g8c3b6c5"
  sha256 "df64db9cf7edcb3eecc4528a0064b9302898a48d9016551183eccbcf4c796a92"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.9-3-g8c3b6c5", output
  end
end
