# Generated with JReleaser 1.12.0 at 2024-06-13T09:18:01.019366025Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.3-9-g69c4741/streamx-0.3.3-9-g69c4741.zip"
  version "0.3.3-9-g69c4741"
  sha256 "d05baab0e98e7eab7e7d592c65d1de5f4d835a97535dc398d5831884a1350442"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.3-9-g69c4741", output
  end
end
