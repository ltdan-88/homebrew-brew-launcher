class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "7c5841bd46d0bf392019c9bf6e23285dc4a7b303978d6f878f5d01eb2afd5de5"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.4.2",
      shell_output("#{bin}/brew-launcher --version")
  end
end
