# Generated with JReleaser 1.17.0 at 2025-04-28T09:17:56.014205885Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-28-g9f902cd/streamx-1.0.2-28-g9f902cd.zip"
  version "1.0.2-28-g9f902cd"
  sha256 "d15630836e4727249f6db312a352d6462cb3c1431f80aaddb6c8d51f2f4b9fdf"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-28-g9f902cd", output
  end
end
