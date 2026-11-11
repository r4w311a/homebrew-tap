class ClaudeProfiles < Formula
  desc "Run several Claude Desktop accounts side by side on a Mac"
  homepage "https://github.com/r4w311a/claude-profiles"
  url "https://github.com/r4w311a/claude-profiles/releases/download/v1.0.3/claude-profiles-1.0.3.tar.gz"
  sha256 "bea8644081f00bc2ca9538e6660b1aea72fc7270ac144b88c55be024ca082c19"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "claude-profiles"
    libexec.install "claude-profile-launcher"
  end

  def caveats
    <<~EOS
      Finish the setup with:
        claude-profiles install

      Run it again after each upgrade to refresh the menu bar app.
    EOS
  end

  test do
    assert_equal "1.0.3", shell_output("#{bin}/claude-profiles --version").strip
  end
end
