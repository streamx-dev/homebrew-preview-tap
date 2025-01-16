# Generated with JReleaser 1.15.0 at 2025-01-16T14:06:08.756804107Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-13-g39d683f/streamx-1.0.1-13-g39d683f.zip"
  version "1.0.1-13-g39d683f"
  sha256 "acd5fc5b6de5508baab945d68c10d40d89ca2f95903b21f677d498dd088846a7"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-13-g39d683f", output
  end
end
