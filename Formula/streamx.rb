# Generated with JReleaser 1.12.0 at 2024-10-21T12:49:17.696103458Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-15-g45d03e5/streamx-0.3.8-15-g45d03e5.zip"
  version "0.3.8-15-g45d03e5"
  sha256 "8cc830d89e3ee8d5e9cd41dd6852a5d7fa2723582386706a431774c155a82cf9"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8-15-g45d03e5", output
  end
end
