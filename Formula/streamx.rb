# Generated with JReleaser 1.12.0 at 2024-10-21T08:55:31.61602398Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-13-g10751bc/streamx-0.3.8-13-g10751bc.zip"
  version "0.3.8-13-g10751bc"
  sha256 "6e51335feb528efdc656dbfb21a289a31b9ec4afb0cdd9da932ca6484d548c27"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8-13-g10751bc", output
  end
end
