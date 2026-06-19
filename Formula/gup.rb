class Gup < Formula
  desc "git add + commit + push with conventional commits and AI message generation"
  homepage "https://github.com/MerzoukeMansouri/gup"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.3.0/gup-v1.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "f61b1cddbf07083d2f655a2ebb5f2f711bd98af845ec5cebf1ea60cf2c6e9f01"
    else
      url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.3.0/gup-v1.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "2f6ad0604d82aaf4ab16b041a56dbc3cc47368c836eee3f2c7af77eea046b4be"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.3.0/gup-v1.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8b93a11b22c2fe56d2fd6980bfa37aacc2e7cd1c8866c01ab48b1dab28248aa9"
  end

  def install
    bin.install "gup"
  end

  test do
    system "#{bin}/gup", "--help"
  end
end
