# Generated with JReleaser 1.12.0 at 2024-07-17T11:19:59.113414579Z

class Streamx < Formula
  desc "CLI for StreamX - preview version"
  homepage "https://www.streamx.dev"
  url "https://github.com/streamx-dev/streamx-cli-preview/releases/download/0.3.4-5-g189ad1c/streamx-0.3.4-5-g189ad1c.zip"
  version "0.3.4-5-g189ad1c"
  sha256 "0bd830eeb9e2bb6288c45b7aaafdad0e23adf2b93a8c8952b0af0af93d73e418"
  license "EULA"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.3.4-5-g189ad1c", output
  end
end
