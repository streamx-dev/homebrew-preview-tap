# Generated with JReleaser 1.12.0 at 2024-09-10T11:41:13.336823029Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.7-9-g6468e94/streamx-0.3.7-9-g6468e94.zip"
  version "0.3.7-9-g6468e94"
  sha256 "97c596ab9aa266057a668c7811a8233ca1b16f37f1485c1b5f24c73081443332"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.7-9-g6468e94", output
  end
end
