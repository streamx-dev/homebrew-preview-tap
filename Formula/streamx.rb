# Generated with JReleaser 1.12.0 at 2024-07-17T11:20:07.565511106Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.4-5-g189ad1c/streamx-0.3.4-5-g189ad1c.zip"
  version "0.3.4-5-g189ad1c"
  sha256 "3a621f620e192976f6f9a75b9d2baf08222e6bfbcc9d69682089666d258d8029"
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
