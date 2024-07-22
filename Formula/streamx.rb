# Generated with JReleaser 1.12.0 at 2024-07-22T13:47:13.275906749Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.5-2-g58c19cf/streamx-0.3.5-2-g58c19cf.zip"
  version "0.3.5-2-g58c19cf"
  sha256 "279378e17285716016631c567bcd4bdf2e4d0e858f2d77ab4bf717e2790b2b11"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.5-2-g58c19cf", output
  end
end
