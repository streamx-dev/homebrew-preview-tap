# Generated with JReleaser 1.15.0 at 2024-12-17T11:50:48.893822344Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.0-10-g9050a8d/streamx-1.0.0-10-g9050a8d.zip"
  version "1.0.0-10-g9050a8d"
  sha256 "63e9d0094d8e85695ea50a9d666962e0491bdc35489ff896aef94badc4438fa7"
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
