# Generated with JReleaser 1.15.0 at 2025-01-02T08:53:30.962392136Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-4-g6df3dd7/streamx-1.0.1-4-g6df3dd7.zip"
  version "1.0.1-4-g6df3dd7"
  sha256 "b7de326174712876eacf927638060b7b537df13fffe71e21e1dce8f8f7514359"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-4-g6df3dd7", output
  end
end
