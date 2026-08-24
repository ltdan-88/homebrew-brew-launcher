class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.5.4.tar.gz"
  sha256 "37200cf788c096c0a0a825215c0a20f2260fc3baa75e9e23c699c48d6b8bb2f4"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.5.4",
      shell_output("#{bin}/brew-launcher --version")
  end
end
