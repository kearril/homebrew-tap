class Tacit < Formula
  desc "Local-first, transparent personal memory system for AI coding clients over MCP"
  homepage "https://github.com/kearril/tacit-memory"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kearril/tacit-memory/releases/download/v1.0.0/tacit-1.0.0-osx-arm64.tar.gz"
      sha256 "e0572d2f8ddfd247a24db1f3e74c9e1df20e7bb9df37cd4c8650126c9f3518de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kearril/tacit-memory/releases/download/v1.0.0/tacit-1.0.0-linux-x64.tar.gz"
      sha256 "707182fbc3d8fa6e6c070a890def5f9db4059a6b0a91ba2e1e5bb9f7e27720e7"
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
