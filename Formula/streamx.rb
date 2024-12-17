# Generated with JReleaser 1.15.0 at 2024-12-17T11:51:59.234993541Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.0-10-g9050a8d/streamx-1.0.0-10-g9050a8d.zip"
  version "1.0.0-10-g9050a8d"
  sha256 "b9df4dbcee43bfe5c872f142bb0350e8b000dee928533cd5532a58c87d3671da"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.0-10-g9050a8d", output
  end
end
