# Generated with JReleaser 1.12.0 at 2024-09-09T09:20:48.127767982Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.7-6-gf304429/streamx-0.3.7-6-gf304429.zip"
  version "0.3.7-6-gf304429"
  sha256 "8d3019150f9edd85650a6524bf2f84ab6e5688d239f31b29fd6aba0b5f686df7"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.7-6-gf304429", output
  end
end
