class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"

  depends_on "fzf"
  depends_on "python@3.11"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    # The launcher prints a version string with --version
    assert_match "brew-launcher", shell_output("#{bin}/brew-launcher --version")
  end
end
