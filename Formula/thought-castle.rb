class ThoughtCastle < Formula
  desc "Local-first LLM session vault and knowledge CLI"
  homepage "https://github.com/malleus35/thought-castle"
  url "https://github.com/malleus35/thought-castle/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c367db19e824d291c84a320dcc9524570f335675d043d6cf1daea55349e99472"
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
