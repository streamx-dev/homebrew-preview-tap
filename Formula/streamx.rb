# Generated with JReleaser 1.16.0 at 2025-03-06T08:57:50.00356176Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.2-8-g0fdaa95/streamx-1.0.2-8-g0fdaa95.zip"
  version "1.0.2-8-g0fdaa95"
  sha256 "324a5aefcff68ce1f9fbbbfc02d1fc67a9e8e308d32e5932b2eeb89a03ea45e7"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.2-8-g0fdaa95", output
  end
end
