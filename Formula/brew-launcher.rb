class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.2.0",
      shell_output("#{bin}/brew-launcher --version")
  end
end
