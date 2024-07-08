# Generated with JReleaser 1.12.0 at 2024-07-08T07:16:42.960115023Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.3-15-g71fbb52/streamx-0.3.3-15-g71fbb52.zip"
  version "0.3.3-15-g71fbb52"
  sha256 "09f644c844f859e7dd466b5741a4c602e5a10046ac8926d8c12bc737aa9ebe6c"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.3-15-g71fbb52", output
  end
end
