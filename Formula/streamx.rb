# Generated with JReleaser 1.17.0 at 2025-06-27T14:20:53.216367006Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.1.1-3-g42be9b2/streamx-1.1.1-3-g42be9b2.zip"
  version "1.1.1-3-g42be9b2"
  sha256 "0e76fdabf98fab1b3f2ec76f7e10381c7d71dd891d4d33d4bc69d6d493c9498b"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.1.1-3-g42be9b2", output
  end
end
