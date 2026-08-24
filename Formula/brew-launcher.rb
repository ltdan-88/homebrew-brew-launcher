class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "390dfd1f089a0dd3c1b1d94044f23b8e042b5c0274e7188dc362a7b12ddf9e67"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.6.0",
      shell_output("#{bin}/brew-launcher --version")
  end
end
