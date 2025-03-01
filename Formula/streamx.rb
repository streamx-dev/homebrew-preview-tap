# Generated with JReleaser 1.16.0 at 2025-03-01T19:06:32.113157928Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-6-gd44a28c/streamx-1.0.2-6-gd44a28c.zip"
  version "1.0.2-6-gd44a28c"
  sha256 "fa3e97ab41d1f89a592da5c73af96c21d67042c1902d772d31775f8b9f152081"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-6-gd44a28c", output
  end
end
