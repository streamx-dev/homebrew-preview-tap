# Generated with JReleaser 1.16.0 at 2025-03-31T12:14:21.507958982Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-15-g89d5c89/streamx-1.0.2-15-g89d5c89.zip"
  version "1.0.2-15-g89d5c89"
  sha256 "78bf4226ea773b0bb0de38fe77e53f0928fc35bfd7e4b05de85750f0cde508fb"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-15-g89d5c89", output
  end
end
