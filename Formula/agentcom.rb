class Agentcom < Formula
  desc "Real-time communication CLI for parallel AI coding agents"
  homepage "https://github.com/malleus35/agentcom"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/malleus35/agentcom/releases/download/v0.1.3/agentcom_0.1.3_darwin_arm64.tar.gz"
      sha256 "b8b506374447338b458e4058a7ad257e2be8a6271752dfcc73f3213a388fcbac"
    else
      url "https://github.com/malleus35/agentcom/releases/download/v0.1.3/agentcom_0.1.3_darwin_amd64.tar.gz"
      sha256 "35cf326d32f69efd3741abe98bdb5e284cfebdb9cb8f04ff2f201650c861f00d"
    end
  end

  on_linux do
    url "https://github.com/malleus35/agentcom/releases/download/v0.1.3/agentcom_0.1.3_linux_amd64.tar.gz"
    sha256 "44b78d0890449a6036ecbc4382b4a3f9571da02d3734b663858eca69afdd53b3"
  end

  def install
    bin.install "agentcom"
  end

  test do
    assert_match "agentcom", shell_output("#{bin}/agentcom version")
  end
end
