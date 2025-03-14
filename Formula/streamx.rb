# Generated with JReleaser 1.16.0 at 2025-03-14T09:24:48.685577475Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-9-ga686c10/streamx-1.0.2-9-ga686c10.zip"
  version "1.0.2-9-ga686c10"
  sha256 "45f6f50f9ac6fee51c570539bc97d4e7a9c50b9823b5f94b69e0c0c6499c1ee5"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-9-ga686c10", output
  end
end
