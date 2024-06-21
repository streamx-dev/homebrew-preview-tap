# Generated with JReleaser 1.12.0 at 2024-06-21T13:40:01.897160029Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.3-12-gf567e73/streamx-0.3.3-12-gf567e73.zip"
  version "0.3.3-12-gf567e73"
  sha256 "4864b7910ae83c95cce41210df41f9271c5221c2358e6aeba211642881263beb"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.3-12-gf567e73", output
  end
end
