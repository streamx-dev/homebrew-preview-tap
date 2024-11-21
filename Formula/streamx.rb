# Generated with JReleaser 1.12.0 at 2024-11-21T08:49:38.180721272Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.9-7-gd778575/streamx-0.3.9-7-gd778575.zip"
  version "0.3.9-7-gd778575"
  sha256 "0b82215c951b5b6027b54d1a8cad68ced44af1b5a216a01d1061b26822930d14"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.9-7-gd778575", output
  end
end
