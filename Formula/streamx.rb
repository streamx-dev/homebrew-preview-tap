# Generated with JReleaser 1.15.0 at 2024-12-30T09:07:00.654973597Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-2-gfdc9d43/streamx-1.0.1-2-gfdc9d43.zip"
  version "1.0.1-2-gfdc9d43"
  sha256 "3b5b2131adad3d84522e83008dbb03030efcf8aaddf596569cad05b34c50b39b"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-2-gfdc9d43", output
  end
end
