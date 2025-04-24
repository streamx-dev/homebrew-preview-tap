# Generated with JReleaser 1.17.0 at 2025-04-24T14:25:06.294826115Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-27-g8679a99/streamx-1.0.2-27-g8679a99.zip"
  version "1.0.2-27-g8679a99"
  sha256 "aa9d55fa1b2e99667c390799f74bb7d25fc76b66bb6ac5dacf762b8b1590490c"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-27-g8679a99", output
  end
end
