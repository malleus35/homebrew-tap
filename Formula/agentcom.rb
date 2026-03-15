class Agentcom < Formula
  desc "Real-time communication CLI for parallel AI coding agents"
  homepage "https://github.com/malleus35/agentcom"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/malleus35/agentcom/releases/download/v0.1.6/agentcom_0.1.6_darwin_arm64.tar.gz"
      sha256 "fade6b800704f18b7a169c24d5eb8863eeda38b916ccc03aea39eb8eb1d60d0a"
    else
      url "https://github.com/malleus35/agentcom/releases/download/v0.1.6/agentcom_0.1.6_darwin_amd64.tar.gz"
      sha256 "6f539ddddc8030c6912b34ebb712c270a9497da8e051d38b8de965f583a7ee5c"
    end
  end

  on_linux do
    url "https://github.com/malleus35/agentcom/releases/download/v0.1.6/agentcom_0.1.6_linux_amd64.tar.gz"
    sha256 "90f0ae638d970bd7ba8f0f2dc699498ffb44374c304209eca085aeb1116371bf"
  end

  def install
    bin.install "agentcom"
  end

  test do
    assert_match "agentcom", shell_output("#{bin}/agentcom version")
  end
end
