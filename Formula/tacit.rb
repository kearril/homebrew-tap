class Tacit < Formula
  desc "Local-first, transparent personal memory system for AI coding clients over MCP"
  homepage "https://github.com/kearril/tacit-memory"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/kearril/tacit-memory/releases/download/v1.0.1/tacit-1.0.1-osx-arm64.tar.gz"
      sha256 "24ea0c416cd866202e757032e06d73fcaa2f05e48ad1565c5c65fab84a529479"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kearril/tacit-memory/releases/download/v1.0.1/tacit-1.0.1-linux-x64.tar.gz"
      sha256 "3a75d92025e7ab893ad071127b7a8031cd40d5ae98c19c8efc6cdf30e5f1d8a1"
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
