class Agentcom < Formula
  desc "Real-time communication CLI for parallel AI coding agents"
  homepage "https://github.com/malleus35/agentcom"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/malleus35/agentcom/releases/download/v0.1.2/agentcom_0.1.2_darwin_arm64.tar.gz"
      sha256 "66ef2459b99d9b9cac8b63c48414a0376c6638b594c2954cbf3a89648f5c9cdc"
    else
      url "https://github.com/malleus35/agentcom/releases/download/v0.1.2/agentcom_0.1.2_darwin_amd64.tar.gz"
      sha256 "4216bc8e88fd33664a8c2a1404fa5e6ce02162b75dfa3caafcac16e6e2e00c22"
    end
  end

  on_linux do
    url "https://github.com/malleus35/agentcom/releases/download/v0.1.2/agentcom_0.1.2_linux_amd64.tar.gz"
    sha256 "44210fdeacc37a2bd71528e5de45f94c2ea8cb7849b26c80cc1921ad4a9ff6e6"
  end

  def install
    bin.install "agentcom"
  end

  test do
    assert_match "agentcom", shell_output("#{bin}/agentcom version")
  end
end
