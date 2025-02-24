# Generated with JReleaser 1.15.0 at 2025-02-24T11:35:44.148242126Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-4-ge2a3d6b/streamx-1.0.2-4-ge2a3d6b.zip"
  version "1.0.2-4-ge2a3d6b"
  sha256 "aa9d5966518b754a9fef44977fb8d0cfec207aefc7b1388cd7a3399da1a924f6"
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
