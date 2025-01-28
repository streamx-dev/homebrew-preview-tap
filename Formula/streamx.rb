# Generated with JReleaser 1.15.0 at 2025-01-28T15:24:22.832149412Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-19-g23ce3e2/streamx-1.0.1-19-g23ce3e2.zip"
  version "1.0.1-19-g23ce3e2"
  sha256 "faf70b3c24a71bc87b24721ae5d2b2f02e75b11cd18b14abcc9af30c83a59f86"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-19-g23ce3e2", output
  end
end
