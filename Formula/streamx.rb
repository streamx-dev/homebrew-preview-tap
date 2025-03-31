# Generated with JReleaser 1.16.0 at 2025-03-31T12:17:37.164266422Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-16-g490db9a/streamx-1.0.2-16-g490db9a.zip"
  version "1.0.2-16-g490db9a"
  sha256 "a93e477a9ca26a871e7e9a4e0813e386236a5a3ef3a9853e2155d37b6eb3e13f"
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
