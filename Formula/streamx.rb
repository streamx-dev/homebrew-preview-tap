# Generated with JReleaser 1.15.0 at 2025-01-17T11:20:52.105503781Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-16-g96741ab/streamx-1.0.1-16-g96741ab.zip"
  version "1.0.1-16-g96741ab"
  sha256 "c2deb406fa7b31f66e6cea0420b17e5c53e5f2bcd07acaf8d8d967e9811f0408"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-16-g96741ab", output
  end
end
