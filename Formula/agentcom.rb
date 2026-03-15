class Agentcom < Formula
  desc "Real-time communication CLI for parallel AI coding agents"
  homepage "https://github.com/malleus35/agentcom"
  version "0.1.4"

  on_macos do
    url "https://github.com/malleus35/agentcom/releases/download/v0.1.4/agentcom_0.1.4_darwin_amd64.tar.gz"
    sha256 "328212770c9762fa02a428689521421ebaf56d81c20cc50e39f122522bd21877"
  end

  on_linux do
    url "https://github.com/malleus35/agentcom/releases/download/v0.1.4/agentcom_0.1.4_linux_amd64.tar.gz"
    sha256 "b3ca45c32a313fb92b2544749e6fb304470cf3250c40b4cc87b70034fd59bab5"
  end

  def install
    bin.install "agentcom"
  end

  test do
    assert_match "agentcom", shell_output("#{bin}/agentcom version")
  end
end
