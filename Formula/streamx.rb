# Generated with JReleaser 1.16.0 at 2025-02-27T15:21:10.891806515Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-8-gd71dbe1/streamx-1.0.2-8-gd71dbe1.zip"
  version "1.0.2-8-gd71dbe1"
  sha256 "3f720ac190902a1fdc0e0235bd62ab5f2965edc665a0e28c81f9224f9bf0fe86"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-8-gd71dbe1", output
  end
end
