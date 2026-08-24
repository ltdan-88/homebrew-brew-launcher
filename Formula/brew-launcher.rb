class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.5.3.tar.gz"
  sha256 "bb2150baed35142a25bc1d3b5d7c0aa59c4d465bdfafa9855bba68bbed011082"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.5.3",
      shell_output("#{bin}/brew-launcher --version")
  end
end
