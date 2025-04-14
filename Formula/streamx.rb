# Generated with JReleaser 1.16.0 at 2025-04-14T13:06:01.93552674Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-21-gbef21d2/streamx-1.0.2-21-gbef21d2.zip"
  version "1.0.2-21-gbef21d2"
  sha256 "8bf5c8986fddb57b14b2cdff87eb80a2d72b2565ecb33d2e9f51e81be9e3d2ac"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-21-gbef21d2", output
  end
end
