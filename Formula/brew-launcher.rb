class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "8b0e146e5337d25edabfb1681af0aab706fa526936308df7546bee564f068d9b"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.4.1",
      shell_output("#{bin}/brew-launcher --version")
  end
end
