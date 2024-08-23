# Generated with JReleaser 1.12.0 at 2024-08-23T13:49:11.870995043Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.7-4-gc24de53/streamx-0.3.7-4-gc24de53.zip"
  version "0.3.7-4-gc24de53"
  sha256 "1814faac8702c0519f8a5f6663dab732977705bacc302c9e5715cca3dc2021df"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.7-4-gc24de53", output
  end
end
