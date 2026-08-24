class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "e0e40b472f5eb97b692b0b8542f2fe2779ef533db1d74149a9c720c5c4cb75cd"
  license "MIT"

  depends_on "fzf"

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.7.1",
      shell_output("#{bin}/brew-launcher --version")
  end
end
