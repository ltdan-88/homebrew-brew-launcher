class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "58e5d10abba744ee33c6fa6523038141e2867e4c84ce3f87e4b9b984005ff0c6"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.5.2",
      shell_output("#{bin}/brew-launcher --version")
  end
end
