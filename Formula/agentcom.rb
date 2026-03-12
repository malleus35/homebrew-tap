class Agentcom < Formula
  desc "Real-time communication CLI for parallel AI coding agents"
  homepage "https://github.com/malleus35/agentcom"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/malleus35/agentcom/releases/download/v0.1.0/agentcom_0.1.0_darwin_arm64.tar.gz"
      sha256 "fdda42f33eb0c5a76f645b020cacc4591c5ed50095a3f109c0d4c014bd5ddb3e"
    else
      url "https://github.com/malleus35/agentcom/releases/download/v0.1.0/agentcom_0.1.0_darwin_amd64.tar.gz"
      sha256 "0ac288945c9aed7d48d6b025c5d3138965128e7762df7d1f7b176798cfa73504"
    end
  end

  on_linux do
    url "https://github.com/malleus35/agentcom/releases/download/v0.1.0/agentcom_0.1.0_linux_amd64.tar.gz"
    sha256 "3512eb3a3ed8e0400df2206e2e2a8ba9ea1fa02a3d2a1f3253e2cc13fed3768b"
  end

  def install
    bin.install "agentcom"
  end

  test do
    assert_match "agentcom", shell_output("#{bin}/agentcom version")
  end
end
