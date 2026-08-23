class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "ddb190742e8692678eb952bead5e58776cb79370b3f9b67c3fd2bb5df67d12d6"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.2.1",
      shell_output("#{bin}/brew-launcher --version")
  end
end
