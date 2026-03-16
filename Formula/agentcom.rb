class Agentcom < Formula
  desc "Real-time communication CLI for parallel AI coding agents"
  homepage "https://github.com/malleus35/agentcom"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/malleus35/agentcom/releases/download/v0.2.1/agentcom_0.2.1_darwin_arm64.tar.gz"
      sha256 "dd5dc5df7619021e12e57d34cf1e10531f22b0c05356f9b00cb0d485f68ae8b4"
    else
      url "https://github.com/malleus35/agentcom/releases/download/v0.2.1/agentcom_0.2.1_darwin_amd64.tar.gz"
      sha256 "806cef3827ca31f82fc9c50de60764a33c1a6250295adf20b62ac630e6e981b9"
    end
  end

  on_linux do
    url "https://github.com/malleus35/agentcom/releases/download/v0.2.1/agentcom_0.2.1_linux_amd64.tar.gz"
    sha256 "8a37eaada463505e3efd8cc8f5d1ee610f14c6c1cfb1e8b54cec97d7e65ce0b1"
  end

  def install
    bin.install "agentcom"
  end

  test do
    assert_match "agentcom", shell_output("#{bin}/agentcom version")
  end
end
