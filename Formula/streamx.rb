# Generated with JReleaser 1.12.0 at 2024-11-20T14:04:41.863436729Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.9-5-g74fbf2d/streamx-0.3.9-5-g74fbf2d.zip"
  version "0.3.9-5-g74fbf2d"
  sha256 "7115eed5c7b48b36264645b407b46076a40a4acc7f7ce9701473de58667a51c6"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.9-5-g74fbf2d", output
  end
end
