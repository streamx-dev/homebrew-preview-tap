# Generated with JReleaser 1.17.0 at 2025-06-27T14:22:07.683907425Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.1.1-3-g42be9b2/streamx-1.1.1-3-g42be9b2.zip"
  version "1.1.1-3-g42be9b2"
  sha256 "5ac0d952b1e3a6e7d3bfa2d28fd9c7276b8b8743727333b6afecbb98df37f557"
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
