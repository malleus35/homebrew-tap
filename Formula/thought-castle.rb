class ThoughtCastle < Formula
  desc "Local-first LLM session vault and knowledge CLI"
  homepage "https://github.com/malleus35/thought-castle"
  url "https://github.com/malleus35/thought-castle/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "e89a76b80ecb1aa6a9278f949f0096b55ce60b6d3de21391e1f00350fb68df2e"
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
    version = shell_output("#{bin}/thought-castle --version").strip
    assert_equal "thought-castle 0.1.4", version

    output = shell_output("#{bin}/thought-castle")
    assert_match "thought-castle", output
    assert_match "source list", output
    assert_match "sync", output
  end
end
