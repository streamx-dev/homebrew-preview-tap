# Generated with JReleaser 1.15.0 at 2025-01-02T08:56:16.389126872Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/1.0.1-7-gd25690d/streamx-1.0.1-7-gd25690d.zip"
  version "1.0.1-7-gd25690d"
  sha256 "bd6ffb9f45c345769d2bb39bb8ef69de30d9ebad001471eb8f285760922d370f"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "1.0.1-7-gd25690d", output
  end
end
