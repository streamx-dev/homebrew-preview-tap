# Generated with JReleaser 1.12.0 at 2024-09-09T13:15:27.319576404Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.7-7-g42e3375/streamx-0.3.7-7-g42e3375.zip"
  version "0.3.7-7-g42e3375"
  sha256 "2153299faf235c3820057071bdf026c29070fdaa063eccb91821f3dd47667f61"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.7-7-g42e3375", output
  end
end
