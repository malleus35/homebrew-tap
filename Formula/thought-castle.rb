class ThoughtCastle < Formula
  desc "Local-first LLM session vault and knowledge CLI"
  homepage "https://github.com/malleus35/thought-castle"
  url "https://github.com/malleus35/thought-castle/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "098c4fa1a0e05b5beb2c34961ec62ff3bea8a2461cbc24a35a38eb4adc86b5db"
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
    assert_equal "thought-castle 0.1.3", version

    output = shell_output("#{bin}/thought-castle")
    assert_match "thought-castle", output
    assert_match "source list", output
    assert_match "sync", output
  end
end
