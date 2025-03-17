# Generated with JReleaser 1.16.0 at 2025-03-17T12:48:34.921803512Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-11-g0e34777/streamx-1.0.2-11-g0e34777.zip"
  version "1.0.2-11-g0e34777"
  sha256 "c11ce19ecfd3a3a88f344c66ec1f8e722c3d70471d42dc4df906d6c5d169025e"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-11-g0e34777", output
  end
end
