# Generated with JReleaser 1.12.0 at 2024-10-21T08:51:15.549582721Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-13-g10751bc/streamx-0.3.8-13-g10751bc.zip"
  version "0.3.8-13-g10751bc"
  sha256 "0b8fd257b6c7fd0485071b024cb805b83b92cbd88745e1e0ff22d1b425f50f78"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8-13-g10751bc", output
  end
end
