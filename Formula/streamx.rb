# Generated with JReleaser 1.15.0 at 2024-12-23T13:56:46.816633046Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.0-11-gd8c08b3/streamx-1.0.0-11-gd8c08b3.zip"
  version "1.0.0-11-gd8c08b3"
  sha256 "67bcba996c3a6f3dd4a32af0d5521f485317b9b90d713c37500be5eb2a9dea53"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.0-11-gd8c08b3", output
  end
end
