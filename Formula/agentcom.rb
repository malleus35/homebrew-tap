class Agentcom < Formula
  desc "Real-time communication CLI for parallel AI coding agents"
  homepage "https://github.com/malleus35/agentcom"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/malleus35/agentcom/releases/download/v0.3.0/agentcom_0.3.0_darwin_arm64.tar.gz"
      sha256 "4bd79ac195f6480d6add9c5d68c2779a35cde9947be98f9572e28ed831a8e5ec"
    end
    on_intel do
      url "https://github.com/malleus35/agentcom/releases/download/v0.3.0/agentcom_0.3.0_darwin_amd64.tar.gz"
      sha256 "5d36722f54106e7e0d7422d7ac83ab190936ec8bc66d2eeb4525a45a02bcb72d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/malleus35/agentcom/releases/download/v0.3.0/agentcom_0.3.0_linux_arm64.tar.gz"
      sha256 "64a0532b4f6ff0b89b7e6de9c4241fa88cd9e006ef4a88110d899098caae1ff9"
    end
    on_intel do
      url "https://github.com/malleus35/agentcom/releases/download/v0.3.0/agentcom_0.3.0_linux_amd64.tar.gz"
      sha256 "2cada0a6bddb72484a86ca5007547106d1032663a2e6a68d29bf772e3dd63441"
    end
  end

  def install
    bin.install "agentcom"
  end

  test do
    assert_match "agentcom", shell_output("#<built-in function bin>/agentcom version")
  end
end
