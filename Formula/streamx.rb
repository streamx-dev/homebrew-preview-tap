# Generated with JReleaser 1.12.0 at 2024-07-12T12:21:54.838002199Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.4-2-g965e4db/streamx-0.3.4-2-g965e4db.zip"
  version "0.3.4-2-g965e4db"
  sha256 "f81fd233416b886de29367202b822ddc61768d1b0dcdb16937fc04aed03d4d54"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.4-2-g965e4db", output
  end
end
