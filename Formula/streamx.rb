# Generated with JReleaser 1.12.0 at 2024-10-03T07:27:30.863238689Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-6-g3bcad36/streamx-0.3.8-6-g3bcad36.zip"
  version "0.3.8-6-g3bcad36"
  sha256 "5031345f1f6e868ef32f2bc380ec164acbe4a2211b35c37c87a9ec9c15e3a3e6"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8-6-g3bcad36", output
  end
end
