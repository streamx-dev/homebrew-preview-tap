# Generated with JReleaser 1.15.0 at 2025-02-20T12:39:48.060629078Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-3-gcb299b7/streamx-1.0.2-3-gcb299b7.zip"
  version "1.0.2-3-gcb299b7"
  sha256 "633985cd89e929c61f1d9b76d36f446550eefab1f3b9a1164dd08b2e5421c7e7"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-3-gcb299b7", output
  end
end
