# Generated with JReleaser 1.15.0 at 2025-01-02T09:00:19.5218955Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-7-gd25690d/streamx-1.0.1-7-gd25690d.zip"
  version "1.0.1-7-gd25690d"
  sha256 "67bc36ac2dab8e5e82b7ebc735141738791054bfbe39a06edb51c26b69b1a443"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-7-gd25690d", output
  end
end
