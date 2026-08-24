class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "bf300834087045a3ca75e75e90439b4611b608c8e4fcfd98854ff85f2f12eaf8"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.5.0",
      shell_output("#{bin}/brew-launcher --version")
  end
end
