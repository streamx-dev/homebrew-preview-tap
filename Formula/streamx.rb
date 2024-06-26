# Generated with JReleaser 1.12.0 at 2024-06-26T09:46:26.338756148Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.3-13-gb8e301b/streamx-0.3.3-13-gb8e301b.zip"
  version "0.3.3-13-gb8e301b"
  sha256 "9ff2b2ef367a1017eea7f25a6e5f3e483a1e32b1cba65a96bb95b8ecf2940d1b"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.3-13-gb8e301b", output
  end
end
