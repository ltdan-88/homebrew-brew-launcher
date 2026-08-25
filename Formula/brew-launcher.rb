class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.15.0.tar.gz"
  sha256 "eac4e94289abe46fa79cb2950381b95fd1e9f85dff246bd251f61548cf170e5e"
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
    assert_match "brew-launcher 0.15.0",
      shell_output("#{bin}/brew-launcher --version")
  end
end
