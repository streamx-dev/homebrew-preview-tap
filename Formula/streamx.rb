# Generated with JReleaser 1.12.0 at 2024-10-21T08:50:53.310926232Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-12-g299807f/streamx-0.3.8-12-g299807f.zip"
  version "0.3.8-12-g299807f"
  sha256 "68c7cce9504006bf17c89808ee71aa84b187fa4c32abfec0f930899d11afa25b"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8-12-g299807f", output
  end
end
