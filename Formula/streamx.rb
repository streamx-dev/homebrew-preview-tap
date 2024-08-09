# Generated with JReleaser 1.12.0 at 2024-08-09T10:29:32.511789372Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.7-3-g69584ee/streamx-0.3.7-3-g69584ee.zip"
  version "0.3.7-3-g69584ee"
  sha256 "bb4acc8cfddbaae4ffd16162780a966aaa051e1ee69a9082b08ef1a2f68c57b0"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.7-3-g69584ee", output
  end
end
