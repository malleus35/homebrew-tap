class Agentcom < Formula
  desc "Real-time communication CLI for parallel AI coding agents"
  homepage "https://github.com/malleus35/agentcom"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/malleus35/agentcom/releases/download/v0.1.5/agentcom_0.1.5_darwin_arm64.tar.gz"
      sha256 "93cbb0fa3dd341d700139443b0ec5c8af522869c9cab69f3525818ccfd15214e"
    else
      url "https://github.com/malleus35/agentcom/releases/download/v0.1.5/agentcom_0.1.5_darwin_amd64.tar.gz"
      sha256 "7d3bb5da6102e527f6cb91eb4de0fd64776d1ac21059df138fb41ca7528fa3ea"
    end
  end

  on_linux do
    url "https://github.com/malleus35/agentcom/releases/download/v0.1.5/agentcom_0.1.5_linux_amd64.tar.gz"
    sha256 "2dc0f68c6ea36ac10f2c339e65ad3db4c87ca24085454e1ee3e5fd176d3b3b21"
  end

  def install
    bin.install "agentcom"
  end

  test do
    assert_match "agentcom", shell_output("#{bin}/agentcom version")
  end
end
