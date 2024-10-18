# Generated with JReleaser 1.12.0 at 2024-10-18T12:06:28.456046964Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-8-g592a5f4/streamx-0.3.8-8-g592a5f4.zip"
  version "0.3.8-8-g592a5f4"
  sha256 "0129a84755ab9c32d8cd4eb0e6a3a8e12a323ffb7e483e7a7d552900a8075566"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8-8-g592a5f4", output
  end
end
