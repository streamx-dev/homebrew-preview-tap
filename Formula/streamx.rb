# Generated with JReleaser 1.17.0 at 2025-06-27T14:31:50.64751904Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.1.1-4-gef85582/streamx-1.1.1-4-gef85582.zip"
  version "1.1.1-4-gef85582"
  sha256 "164a3e58786341d0cd8b98a05d37c0fc27304e15218190c2451ddc68ee463a6d"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.1.1-4-gef85582", output
  end
end
