# Generated with JReleaser 1.15.0 at 2025-03-01T18:56:43.184180191Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-4-ge2a3d6b/streamx-1.0.2-4-ge2a3d6b.zip"
  version "1.0.2-4-ge2a3d6b"
  sha256 "2f578556414d20a09c8ac4a606ac671d62aca40fb874e39d50b05a8d7fe5a549"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-4-ge2a3d6b", output
  end
end
