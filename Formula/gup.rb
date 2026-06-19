class Gup < Formula
  desc "git add + commit + push with conventional commits and AI message generation"
  homepage "https://github.com/MerzoukeMansouri/gup"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.2.0/gup-v1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "afdbd5f33f948d1599ca50edffb5f933c3b7862f55f7c3327c9cc884e6f77362"
    else
      url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.2.0/gup-v1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "cb474bbc3bec974c9a7c2c171038841ca008a26abe5a0ced1902e7fc401bf9d8"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.2.0/gup-v1.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "13d902bef61300b2864ac238dc81f8de3ce1490da0cfe67069fa063bdf122dae"
  end

  def install
    bin.install "gup"
  end

  test do
    system "#{bin}/gup", "--help"
  end
end
