class ClaudeProfiles < Formula
  desc "Run several Claude Desktop accounts side by side on a Mac"
  homepage "https://github.com/r4w311a/claude-profiles"
  url "https://github.com/r4w311a/claude-profiles/releases/download/v1.0.2/claude-profiles-1.0.2.tar.gz"
  sha256 "53b422c3b9dfff4ba039e64e271a543ad6f4e68871caf179022b75e0dc5125b2"
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
    assert_equal "1.0.2", shell_output("#{bin}/claude-profiles --version").strip
  end
end
