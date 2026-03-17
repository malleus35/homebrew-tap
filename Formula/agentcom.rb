class Agentcom < Formula
  desc "Real-time communication CLI for parallel AI coding agents"
  homepage "https://github.com/malleus35/agentcom"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://github.com/malleus35/agentcom/releases/download/v0.2.3/agentcom_0.2.3_darwin_arm64.tar.gz"
      sha256 "02640b53105c77efdcb4330774b6720cd5a6924f4ea6ac02b0b8bcd35a1ef664"
    end
    on_intel do
      url "https://github.com/malleus35/agentcom/releases/download/v0.2.3/agentcom_0.2.3_darwin_amd64.tar.gz"
      sha256 "a6b5ec58772965211b684214cb40c224b04b75c95f83084fb5b44910107bdf55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/malleus35/agentcom/releases/download/v0.2.3/agentcom_0.2.3_linux_arm64.tar.gz"
      sha256 "44381c37cbada97e3b1f86cc61dc8f50033d8f4b1970ce45796749dfb8208b6a"
    end
    on_intel do
      url "https://github.com/malleus35/agentcom/releases/download/v0.2.3/agentcom_0.2.3_linux_amd64.tar.gz"
      sha256 "c55c6df9cc83b3f637698c89fa712e6c11e007c3d1a7da02cf069e7016537885"
    end
  end

  def install
    bin.install "agentcom"
  end

  test do
    assert_match "agentcom", shell_output("#<built-in function bin>/agentcom version")
  end
end
