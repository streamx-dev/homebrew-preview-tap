# Generated with JReleaser 1.16.0 at 2025-03-31T12:35:29.884091424Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-17-g7f7c2ee/streamx-1.0.2-17-g7f7c2ee.zip"
  version "1.0.2-17-g7f7c2ee"
  sha256 "8d0625083a24aea634ec2de987fcee42cf3d9091f0e0d015d600de936df9ed27"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-17-g7f7c2ee", output
  end
end
