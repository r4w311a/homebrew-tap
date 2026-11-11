class ClaudeProfiles < Formula
  desc "Run several Claude Desktop accounts side by side on a Mac"
  homepage "https://github.com/r4w311a/claude-profiles"
  url "https://github.com/r4w311a/claude-profiles/releases/download/v1.0.1/claude-profiles-1.0.1.tar.gz"
  sha256 "99f716db55a5899b34d2bd25727307b6b50d0b62e25d11e2a93d0fa4730a5c84"
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
    assert_equal "1.0.1", shell_output("#{bin}/claude-profiles --version").strip
  end
end
