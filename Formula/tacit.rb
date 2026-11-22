class Tacit < Formula
  desc "Local-first, transparent personal memory system for AI coding clients over MCP"
  homepage "https://github.com/kearril/tacit-memory"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kearril/tacit-memory/releases/download/v1.1.0/tacit-1.1.0-osx-arm64.tar.gz"
      sha256 "4c91b2f7791a29970aef5347ad39cf30c6bb58e511aa602e23f112702a42a778"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kearril/tacit-memory/releases/download/v1.1.0/tacit-1.1.0-linux-x64.tar.gz"
      sha256 "7dabf5ae21e9b79b06c5bf925b254500ce5a9b498f6cdc65321cd8d3976b5359"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"tacit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tacit --version")
  end
end
