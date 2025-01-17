# Generated with JReleaser 1.15.0 at 2025-01-17T13:07:09.612844967Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-18-g3a70da7/streamx-1.0.1-18-g3a70da7.zip"
  version "1.0.1-18-g3a70da7"
  sha256 "9d33b3670b475ae211d89ff3070c61026b9dacc031e89889c37d2c3066b59a0e"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-18-g3a70da7", output
  end
end
