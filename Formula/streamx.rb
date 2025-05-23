# Generated with JReleaser 1.17.0 at 2025-05-23T08:35:03.309906694Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.1.0-2-gd9ba028/streamx-1.1.0-2-gd9ba028.zip"
  version "1.1.0-2-gd9ba028"
  sha256 "8712a44e1795b2c76b568214b78a78e32b1ec4352cd36c3bea81ae94c284f6f2"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.1.0-2-gd9ba028", output
  end
end
