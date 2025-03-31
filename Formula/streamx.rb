# Generated with JReleaser 1.16.0 at 2025-03-31T12:23:01.350442351Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-16-g490db9a/streamx-1.0.2-16-g490db9a.zip"
  version "1.0.2-16-g490db9a"
  sha256 "0671951bd479e2575c108bcc0027b5293c793555bc723748c74f2257be4d88c4"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-16-g490db9a", output
  end
end
