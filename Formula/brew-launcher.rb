class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.18.1.tar.gz"
  sha256 "b848f2e6030f71cbd43d0e132406306850b58f21cc81b40bb0ab9df5d18c5c0a"
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
    assert_match "brew-launcher 0.18.1",
      shell_output("#{bin}/brew-launcher --version")
  end
end
