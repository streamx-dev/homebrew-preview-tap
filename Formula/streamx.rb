# Generated with JReleaser 1.12.0 at 2024-06-13T21:09:41.392622089Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.3-10-g830a9fe/streamx-0.3.3-10-g830a9fe.zip"
  version "0.3.3-10-g830a9fe"
  sha256 "b25de8aeae14ef051b5ed800426cb4a99efb9f6b2871687288ffab46f328bcb5"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.3-10-g830a9fe", output
  end
end
