class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "a381c4018f88b8ca2730caad95b0de3b18e1f3d7a896b5a0adb3252e694a94fa"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.7.0",
      shell_output("#{bin}/brew-launcher --version")
  end
end
