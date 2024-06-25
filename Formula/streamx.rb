# Generated with JReleaser 1.12.0 at 2024-06-25T08:29:48.09729893Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.3-13-gb8e301b/streamx-0.3.3-13-gb8e301b.zip"
  version "0.3.3-13-gb8e301b"
  sha256 "bf85b9bec8e2ba54940d57a9d4c9889efd8fc8a69ab1cd93a3b782946779c86a"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.3-13-gb8e301b", output
  end
end
