class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "cb8e30cbb7835aca79b89d3aa828910e2da6d04f9f75f84b91209b1c572c3e17"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.4.0",
      shell_output("#{bin}/brew-launcher --version")
  end
end
