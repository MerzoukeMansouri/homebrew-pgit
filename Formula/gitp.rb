class Gitp < Formula
  desc "K9s-style TUI for managing git operations across multiple repositories"
  homepage "https://github.com/MerzoukeMansouri/gitp"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/gitp/releases/download/v0.2.1/gitp-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "1cd2973e47e5a60fc869cdb5e6972d42ecae18185d1ed5424c473f583e520c80"
    else
      url "https://github.com/MerzoukeMansouri/gitp/releases/download/v0.2.1/gitp-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "acea0f73428b3e3ce516bce5fa257ca1327012022ad667ee975cb541b0d68448"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/gitp/releases/download/v0.2.1/gitp-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "007338d4e77422f8b8d2b606fba5e8c39a8cddb908411b1effc7c5a7af9322d2"
  end

  def install
    bin.install "gitp"
  end

  test do
    system "#{bin}/gitp", "--help"
  end
end
