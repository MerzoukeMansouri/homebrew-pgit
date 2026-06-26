class FastBash < Formula
  desc "Claude Code PreToolUse hook: rewrites grep→rg, find→fd, blocks dangerous shell commands"
  homepage "https://github.com/MerzoukeMansouri/pre-tool-hook"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/pre-tool-hook/releases/download/v1.0.2/fast-bash-v1.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "d342208c8be8a9804da175c18e21acc2caccb1d1e45b63e8216e21c5ab383019"
    else
      url "https://github.com/MerzoukeMansouri/pre-tool-hook/releases/download/v1.0.2/fast-bash-v1.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "17c66c144f2cd4b1d15b8308e54dfa4caf35ec6357744bd5d8e072c52a901d9b"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/pre-tool-hook/releases/download/v1.0.2/fast-bash-v1.0.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dcb5b87e2cf0c7ac7e3927720bdc39847f37f2485ec7376da9ea9f7d731f4ee5"
  end

  def install
    bin.install "fast-bash"
  end

  test do
    system "#{bin}/fast-bash", "--help"
  end
end
