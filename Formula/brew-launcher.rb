class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "9e43f9578e32b8b8e0d5c6ea3d0346d9831104c0ffa38320a193ea5b1d48be1c"
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
