class Agentcom < Formula
  desc "Real-time communication CLI for parallel AI coding agents"
  homepage "https://github.com/malleus35/agentcom"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/malleus35/agentcom/releases/download/v0.3.0/agentcom_0.3.0_darwin_arm64.tar.gz"
      sha256 "fd2b1454dcc722d609c482df276dbc5f729711c1b569bf515ed5dfcf1f7d531e"
    end
    on_intel do
      url "https://github.com/malleus35/agentcom/releases/download/v0.3.0/agentcom_0.3.0_darwin_amd64.tar.gz"
      sha256 "27bb0bda39a472f0fbee13190979debdab8003611e7c8679bf5eeb38a916ab88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/malleus35/agentcom/releases/download/v0.3.0/agentcom_0.3.0_linux_arm64.tar.gz"
      sha256 "0d921968530939318c01de1e25041031138d76919ffec4d93aa530e856829927"
    end
    on_intel do
      url "https://github.com/malleus35/agentcom/releases/download/v0.3.0/agentcom_0.3.0_linux_amd64.tar.gz"
      sha256 "f3970f3280924b3f231f130553bc3caf1db1f80d552420173952142094b675ac"
    end
  end

  def install
    bin.install "agentcom"
  end

  test do
    assert_match "agentcom", shell_output("#<built-in function bin>/agentcom version")
  end
end
