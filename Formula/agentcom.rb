class Agentcom < Formula
  desc "Real-time communication CLI for parallel AI coding agents"
  homepage "https://github.com/malleus35/agentcom"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/malleus35/agentcom/releases/download/v0.2.2/agentcom_0.2.2_darwin_arm64.tar.gz"
      sha256 "14c7d917bf3bf053bfe53cb3dc321bd6931ca7b3c1176de96842c2effcb9c8ff"
    end
    on_intel do
      url "https://github.com/malleus35/agentcom/releases/download/v0.2.2/agentcom_0.2.2_darwin_amd64.tar.gz"
      sha256 "5275016b64e7b7aeb6e02b644cdc3e68b249b99b84801f993909b01f9f73f6f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/malleus35/agentcom/releases/download/v0.2.2/agentcom_0.2.2_linux_arm64.tar.gz"
      sha256 "b2ac1d5250219ee713c0dd09793f9581221e6d00cc48e37c4a2fcc77ec12a126"
    end
    on_intel do
      url "https://github.com/malleus35/agentcom/releases/download/v0.2.2/agentcom_0.2.2_linux_amd64.tar.gz"
      sha256 "ef6fe217cee145a023626003b89535817dca9f0f56697233fd0e038bec7fc7e9"
    end
  end

  def install
    bin.install "agentcom"
  end

  test do
    assert_match "agentcom", shell_output("#{bin}/agentcom version")
  end
end
