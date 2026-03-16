class Agentcom < Formula
  desc "Real-time communication CLI for parallel AI coding agents"
  homepage "https://github.com/malleus35/agentcom"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/malleus35/agentcom/releases/download/v0.2.0/agentcom_0.2.0_darwin_arm64.tar.gz"
      sha256 "cee8ea2e53be507e6c7df9f5c8a01088775cf225ef15a99f44f98db755d1ecbd"
    else
      url "https://github.com/malleus35/agentcom/releases/download/v0.2.0/agentcom_0.2.0_darwin_amd64.tar.gz"
      sha256 "9f29c51eb0f387e77b6c7c02bd760b14911bc09d6de711f0736abc0c04141622"
    end
  end

  on_linux do
    url "https://github.com/malleus35/agentcom/releases/download/v0.2.0/agentcom_0.2.0_linux_amd64.tar.gz"
    sha256 "7cbdb7a8740f35714700dab9769c57cb7f83f0d93f2b3266c5da62af5c5f1991"
  end

  def install
    bin.install "agentcom"
  end

  test do
    assert_match "agentcom", shell_output("#{bin}/agentcom version")
  end
end
