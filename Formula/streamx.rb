# Generated with JReleaser 1.12.0 at 2024-10-22T10:23:23.58859751Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.8-17-g7a13bf9/streamx-0.3.8-17-g7a13bf9.zip"
  version "0.3.8-17-g7a13bf9"
  sha256 "fe0bab6b6b9b36dd6dc9d626094dc97c08d08ba67598274cd93228e174e995cd"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.8-17-g7a13bf9", output
  end
end
