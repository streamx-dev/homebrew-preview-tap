# Generated with JReleaser 1.12.0 at 2024-09-05T07:18:18.643080606Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.7-5-ge283616/streamx-0.3.7-5-ge283616.zip"
  version "0.3.7-5-ge283616"
  sha256 "5b8926a666b40713bf5a3c000f94f9323d0567d325ed538265886e3d6fcb72aa"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.7-5-ge283616", output
  end
end
