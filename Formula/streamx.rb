# Generated with JReleaser 1.12.0 at 2024-11-20T09:59:34.012159254Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.9-4-ge1a8fb1/streamx-0.3.9-4-ge1a8fb1.zip"
  version "0.3.9-4-ge1a8fb1"
  sha256 "66d950288f7aa26d0851a7964cf343059946065f78e5876b7fca97dd8acbbf76"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.9-4-ge1a8fb1", output
  end
end
