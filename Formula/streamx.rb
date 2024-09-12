# Generated with JReleaser 1.12.0 at 2024-09-12T08:15:38.602256925Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-2-ga6448ec/streamx-0.3.8-2-ga6448ec.zip"
  version "0.3.8-2-ga6448ec"
  sha256 "628ec29a3d729e58c71d42ac7201c787ab7743923b193eb564e9bbf0e4942ccc"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8-2-ga6448ec", output
  end
end
