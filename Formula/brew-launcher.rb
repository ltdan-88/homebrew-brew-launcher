class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.5.5.tar.gz"
  sha256 "425562b0d5e9fa87c135ed81e7a7832dbf08a8974716a388bfe14032748221d0"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.5.5",
      shell_output("#{bin}/brew-launcher --version")
  end
end
