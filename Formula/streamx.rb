# Generated with JReleaser 1.12.0 at 2024-11-12T12:26:09.192276357Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.9-2-gcaa79c9/streamx-0.3.9-2-gcaa79c9.zip"
  version "0.3.9-2-gcaa79c9"
  sha256 "d05ee995affb9398db8b8343955c203f50b5bd3c2bb16454fb807fbe65f15f4e"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.9-2-gcaa79c9", output
  end
end
