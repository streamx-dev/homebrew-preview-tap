# Generated with JReleaser 1.12.0 at 2024-10-17T10:12:32.195360989Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-7-g78c7d9f/streamx-0.3.8-7-g78c7d9f.zip"
  version "0.3.8-7-g78c7d9f"
  sha256 "e99ac2de7d6d46de0fd13524c3f67e2fd7dab3c737df68bc2fb5e45c94771590"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8-7-g78c7d9f", output
  end
end
