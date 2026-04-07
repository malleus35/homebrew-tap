class Agentcom < Formula
  desc "Real-time communication CLI for parallel AI coding agents"
  homepage "https://github.com/malleus35/agentcom"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/malleus35/agentcom/releases/download/v0.4.0/agentcom_0.4.0_darwin_arm64.tar.gz"
      sha256 "f46ef08b82a6d7b37d9faa53a98c00813cfeaf069481809536ad82a5fdfdccef"
    end
    on_intel do
      url "https://github.com/malleus35/agentcom/releases/download/v0.4.0/agentcom_0.4.0_darwin_amd64.tar.gz"
      sha256 "c2d297bcbd453d875afc546522f7ea8df0bb64b1eb9affbb300f1ce9f3c11510"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/malleus35/agentcom/releases/download/v0.4.0/agentcom_0.4.0_linux_arm64.tar.gz"
      sha256 "8de59e7b5ce39bbbd737bf666bf6f97c997eb9e95eec5f7ed521290f6605dee8"
    end
    on_intel do
      url "https://github.com/malleus35/agentcom/releases/download/v0.4.0/agentcom_0.4.0_linux_amd64.tar.gz"
      sha256 "2cae41300622c0e9194350cda9aef5c2388fc3e501c134088142d73f04a6797d"
    end
  end

  def install
    bin.install "agentcom"
  end

  test do
    assert_match "agentcom", shell_output("#{bin}/agentcom version")
  end
end
