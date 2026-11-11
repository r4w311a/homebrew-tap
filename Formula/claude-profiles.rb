class ClaudeProfiles < Formula
  desc "Run several Claude Desktop accounts side by side on a Mac"
  homepage "https://github.com/r4w311a/claude-profiles"
  url "https://github.com/r4w311a/claude-profiles/releases/download/v1.0.0/claude-profiles-1.0.0.tar.gz"
  sha256 "f92ec940fc78b86a96c1a5d80d8f158b7b9a393b790f2fe9b307879c9c60e38d"
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
    assert_equal "1.0.0", shell_output("#{bin}/claude-profiles --version").strip
  end
end
