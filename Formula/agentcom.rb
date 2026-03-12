class Agentcom < Formula
  desc "Real-time communication CLI for parallel AI coding agents"
  homepage "https://github.com/malleus35/agentcom"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/malleus35/agentcom/releases/download/v0.1.1/agentcom_0.1.1_darwin_arm64.tar.gz"
      sha256 "7a569ca6b228ffb2195ab9fee79014e4545826db85d4b1403b0e863a84bfe492"
    else
      url "https://github.com/malleus35/agentcom/releases/download/v0.1.1/agentcom_0.1.1_darwin_amd64.tar.gz"
      sha256 "ce26bd400e8606adfd3199f7689d63d7ed6a711cb68d2b42aa83cf4a31c9c49d"
    end
  end

  on_linux do
    url "https://github.com/malleus35/agentcom/releases/download/v0.1.1/agentcom_0.1.1_linux_amd64.tar.gz"
    sha256 "676ff53fca0c5ad0dbeef158df57483d6901c85845c89fc823ed089fab50dfa4"
  end

  def install
    bin.install "agentcom"
  end

  test do
    assert_match "agentcom", shell_output("#{bin}/agentcom version")
  end
end
