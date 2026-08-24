class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.7.2.tar.gz"
  sha256 "f8045eeb42a2a63d28f86c8d1c14f82152e8b12854915632716dfca0f47e1f94"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.7.2",
      shell_output("#{bin}/brew-launcher --version")
  end
end
