# Generated with JReleaser 1.12.0 at 2024-08-01T10:44:19.340729222Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.5-3-gd264bf5/streamx-0.3.5-3-gd264bf5.zip"
  version "0.3.5-3-gd264bf5"
  sha256 "a19906de125012094c3ead4f2c844c848c2f021305612706396119f604e5ea6d"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.5-3-gd264bf5", output
  end
end
