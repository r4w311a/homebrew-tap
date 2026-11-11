class ClaudeProfiles < Formula
  desc "Run several Claude Desktop accounts side by side on a Mac"
  homepage "https://github.com/r4w311a/claude-profiles"
  url "https://github.com/r4w311a/claude-profiles/releases/download/v1.0.4/claude-profiles-1.0.4.tar.gz"
  sha256 "26111480472946e76006e6578e749c914e18ecb56f7dcd4cfaad999f0c62398a"
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
    assert_equal "1.0.4", shell_output("#{bin}/claude-profiles --version").strip
  end
end
