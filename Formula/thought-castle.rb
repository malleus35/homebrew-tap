class ThoughtCastle < Formula
  desc "Local-first LLM session vault and knowledge CLI"
  homepage "https://github.com/malleus35/thought-castle"
  url "https://github.com/malleus35/thought-castle/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "759dfef153888aba5fc5b8a5a5a8f7ae68714c54e1f4219d33ba0eae6ac205f1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    output = shell_output("#{bin}/thought-castle")
    assert_match "thought-castle", output
    assert_match "source list", output
    assert_match "sync", output
  end
end
