class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.11.0.tar.gz"
  sha256 "57b56630acf1db5cdef68eb1939fd07a918420ce18863f12069d1b154d5f6519"
  license "MIT"

  depends_on "fzf"
  depends_on "python3"

  # macOS ships zsh as /bin/zsh by default. Most Linux distros don't
  # install it at all, or put it at /usr/bin/zsh instead -- either way
  # the launcher's #!/usr/bin/env zsh shebang needs one on PATH.
  depends_on "zsh" if OS.linux?

  def install
    bin.install "bin/brew-launcher"
  end

  test do
    assert_match "brew-launcher 0.11.0",
      shell_output("#{bin}/brew-launcher --version")
  end
end
