class ThoughtCastle < Formula
  desc "Local-first LLM session vault and knowledge CLI"
  homepage "https://github.com/malleus35/thought-castle"
  url "https://github.com/malleus35/thought-castle/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "7cd2caef7993aba56fb4b500e9911e7dc490c965500b994e942a1a9a67b01d83"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      To install the Thought Castle skill for Pi Agent, Claude Code, Codex, and shared Agent Skills:
        thought-castle skill install

      This installs to ~/.pi/agent/skills/, ~/.claude/skills/,
      ${CODEX_HOME:-~/.codex}/skills/, and ~/.agents/skills/ by default.
    EOS
  end

  test do
    output = shell_output("#{bin}/thought-castle")
    assert_match "thought-castle", output
    assert_match "source list", output
    assert_match "sync", output
  end
end
