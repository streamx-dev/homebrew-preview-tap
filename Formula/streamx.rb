# Generated with JReleaser 1.15.0 at 2025-01-07T09:47:46.928415513Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-9-gbc872fb/streamx-1.0.1-9-gbc872fb.zip"
  version "1.0.1-9-gbc872fb"
  sha256 "7170af3e51ed874d8146eff99b5d5fd75203c50d9284362c3863170a005e02cc"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-9-gbc872fb", output
  end
end
