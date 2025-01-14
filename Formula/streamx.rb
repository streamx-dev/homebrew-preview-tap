# Generated with JReleaser 1.15.0 at 2025-01-14T12:04:42.143102302Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-12-gd38d498/streamx-1.0.1-12-gd38d498.zip"
  version "1.0.1-12-gd38d498"
  sha256 "3a6449e22047c3dbc67e2b2bfb6879db124e6d00c9d20599610462c3ab800204"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-12-gd38d498", output
  end
end
