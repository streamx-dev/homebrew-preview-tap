# Generated with JReleaser 1.12.0 at 2024-09-20T11:29:24.40844644Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-4-g9c07566/streamx-0.3.8-4-g9c07566.zip"
  version "0.3.8-4-g9c07566"
  sha256 "e288403d7e48bd9189c4ab7ecc7b5a85e008dd45452861f55cf32823fc3e2972"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8-4-g9c07566", output
  end
end
