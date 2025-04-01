# Generated with JReleaser 1.16.0 at 2025-04-01T08:01:15.985238084Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-20-gc7ff666/streamx-1.0.2-20-gc7ff666.zip"
  version "1.0.2-20-gc7ff666"
  sha256 "22df23b7c8c77e6f0448e9240370d20040bb3a6b25c72f96c70f19eae9cec688"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-20-gc7ff666", output
  end
end
