# Generated with JReleaser 1.12.0 at 2024-09-10T11:33:36.013632382Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.7-8-g214e3c5/streamx-0.3.7-8-g214e3c5.zip"
  version "0.3.7-8-g214e3c5"
  sha256 "afc5186ee48766e71ad8c815de4afce932ef9d64b978fb50e9f935b76fe9e132"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.7-8-g214e3c5", output
  end
end
