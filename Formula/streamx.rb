# Generated with JReleaser 1.12.0 at 2024-07-17T11:22:07.666455657Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.4-5-g189ad1c/streamx-0.3.4-5-g189ad1c.zip"
  version "0.3.4-5-g189ad1c"
  sha256 "2b2ef8df1a19ae120710f8b336b6ac889813dcdeec7d3fc77a3cad58a4cd54d3"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.4-5-g189ad1c", output
  end
end
