# Generated with JReleaser 1.12.0 at 2024-10-21T09:05:46.848222041Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-14-g2545031/streamx-0.3.8-14-g2545031.zip"
  version "0.3.8-14-g2545031"
  sha256 "15aa8568573b611b159de7a8f82247f154370195582a6e4cbfa6fb661fdfa582"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8-14-g2545031", output
  end
end
