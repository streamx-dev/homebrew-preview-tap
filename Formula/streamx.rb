# Generated with JReleaser 1.12.0 at 2024-10-21T08:56:07.641067829Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-13-g10751bc/streamx-0.3.8-13-g10751bc.zip"
  version "0.3.8-13-g10751bc"
  sha256 "9a988b10fb48f1e8de7c33a66e6673ac3494ad4115ce8aca8e3b382c32715929"
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
