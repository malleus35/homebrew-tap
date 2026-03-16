class Agentcom < Formula
  desc "Real-time communication CLI for parallel AI coding agents"
  homepage "https://github.com/malleus35/agentcom"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/malleus35/agentcom/releases/download/v0.1.7/agentcom_0.1.7_darwin_arm64.tar.gz"
      sha256 "7053fa55b584c1212305bdc3312e481deebd4be49d93a7bf8d92e2800a51c317"
    else
      url "https://github.com/malleus35/agentcom/releases/download/v0.1.7/agentcom_0.1.7_darwin_amd64.tar.gz"
      sha256 "130f22edccc00d711dd7008a267346c2becd3f8ae3a4f6b1b36a4d7e05afc2db"
    end
  end

  on_linux do
    url "https://github.com/malleus35/agentcom/releases/download/v0.1.7/agentcom_0.1.7_linux_amd64.tar.gz"
    sha256 "a8b055e542d1b158ee3ecf4acd913f35404e8d7c7181a16c2d710ed3794bad1c"
  end

  def install
    bin.install "agentcom"
  end

  test do
    assert_match "agentcom", shell_output("#{bin}/agentcom version")
  end
end
