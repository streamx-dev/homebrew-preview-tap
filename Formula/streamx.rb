# Generated with JReleaser 1.12.0 at 2024-12-09T13:35:25.962393105Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.0-3-g216dff1/streamx-1.0.0-3-g216dff1.zip"
  version "1.0.0-3-g216dff1"
  sha256 "cef5aad7d2588735980763e6af49ef6a6cb41b9f4386af8d5840bf1e8936e7a5"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.0-3-g216dff1", output
  end
end
