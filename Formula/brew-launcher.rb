class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "4a4cde600d1cbec0da59c0d1b33aa93642bde72f4c158f67e18cefc9b01f4f11"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.3.0",
      shell_output("#{bin}/brew-launcher --version")
  end
end
