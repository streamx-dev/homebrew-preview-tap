# Generated with JReleaser 1.12.0 at 2024-08-07T12:08:59.913526237Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.7-2-g05fe4d4/streamx-0.3.7-2-g05fe4d4.zip"
  version "0.3.7-2-g05fe4d4"
  sha256 "77c516be438b0a5d8687fda4858ca12a0604217beed69140b208aa1733d871c3"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.7-2-g05fe4d4", output
  end
end
