# Generated with JReleaser 1.12.0 at 2024-09-19T12:42:24.927727653Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-3-g7d59684/streamx-0.3.8-3-g7d59684.zip"
  version "0.3.8-3-g7d59684"
  sha256 "27bb9e7b93b3605356ea110d516f8a18a8d220730ad172368cc7c2a6e419262b"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8-3-g7d59684", output
  end
end
