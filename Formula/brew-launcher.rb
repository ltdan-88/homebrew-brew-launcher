class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "bc5dd07f7cbf7d780b913a81cff8b50639fa50e3750a569303bff5148efca2b6"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.5.1",
      shell_output("#{bin}/brew-launcher --version")
  end
end
