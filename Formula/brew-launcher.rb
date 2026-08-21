class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "663f8c4836b364b7e06a6d8e6c6bf8525641ceb5e9501f934070c3775f5ca2a6"
  version "0.1.0"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.1.0",
      shell_output("#{bin}/brew-launcher --version")
  end
end
