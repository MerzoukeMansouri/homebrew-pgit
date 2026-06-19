class Gup < Formula
  desc "git add + commit + push with conventional commits and AI message generation"
  homepage "https://github.com/MerzoukeMansouri/gup"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.1.0/gup-v1.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "3ad2b02359d0ff1af0e2be81b29dff09aaf042e121d70f3229548c899f71915f"
    else
      url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.1.0/gup-v1.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "3102b525320356477e6e8003454ecb332d3a5448e0edb00cf02357163bc5677b"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/gup/releases/download/v1.1.0/gup-v1.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "16cd68d697b6334b27fdd435c479172b9acb04fedd12577d8382e424c19936bc"
  end

  def install
    bin.install "gup"
  end

  test do
    system "#{bin}/gup", "--help"
  end
end
