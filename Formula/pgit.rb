class Pgit < Formula
  desc "K9s-style TUI for managing git operations across multiple repositories"
  homepage "https://github.com/MerzoukeMansouri/pgit"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/pgit/releases/download/v1.1.0/pgit-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "f2e0b7e4d7299a11d863397ee3136bdadad24a0df9e33a8725f4bfc849cca7e7"
    else
      url "https://github.com/MerzoukeMansouri/pgit/releases/download/v1.1.0/pgit-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "91a28add37f31dfc6b074c1f4bb87d40cd2bd462f8700190e565fe681b00de7f"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/pgit/releases/download/v1.1.0/pgit-v1.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "68a0c7bb00b82d887a589c7b27003ad3b66757ad4a16d02fc1ee53a8b59b9de8"
  end

  def install
    bin.install "pgit"
  end

  test do
    system "#{bin}/pgit", "--help"
  end
end
