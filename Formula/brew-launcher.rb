class BrewLauncher < Formula
  desc "Interactive launcher for installed Homebrew CLI applications"
  homepage "https://github.com/ltdan-88/brew-launcher"
  url "https://github.com/ltdan-88/brew-launcher/archive/refs/tags/v0.71.0.tar.gz"
  sha256 "0864f987e1f32bd327d18d9de31666239bc8f67268620d7bde89ee3bc7423395"
  license "MIT"

  depends_on "fzf"
  depends_on "python3"

  # macOS ships zsh as /bin/zsh by default. Most Linux distros don't
  # install it at all, or put it at /usr/bin/zsh instead -- either way
  # the launcher's #!/usr/bin/env zsh shebang needs one on PATH.
  depends_on "zsh" if OS.linux?

  def install
    bin.install "bin/brew-launcher"

    # lib/brew-launcher/cache_writer.py is the cache-writer, split out
    # of bin/brew-launcher itself as of v0.48.0 (previously an embedded
    # heredoc). Guarded with File.exist? so this formula keeps working
    # unmodified against any release tarball, before or after that
    # split -- bin/brew-launcher resolves this path as a sibling of its
    # own install location (${0:A:h:h}/lib/brew-launcher/...), which is
    # exactly what lib.install produces here.
    if File.exist?("lib/brew-launcher/cache_writer.py")
      (lib/"brew-launcher").install "lib/brew-launcher/cache_writer.py"
    end
  end

  test do
    assert_match "brew-launcher 0.71.0",
      shell_output("#{bin}/brew-launcher --version")
  end
end
