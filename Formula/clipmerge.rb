class Clipmerge < Formula
  desc "A CLI tool for merging clipboard content"
  homepage "https://github.com/kyoshidajp/clipmerge"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kyoshidajp/clipmerge/releases/download/v0.0.2/clipmerge_darwin_amd64.tar.gz"
      sha256 "b4c6ffebf19e92ad9d4e2a9e9fa936146bb587dfc1415a19822b0419545d95ac"
    elsif Hardware::CPU.arm?
      url "https://github.com/kyoshidajp/clipmerge/releases/download/v0.0.2/clipmerge_darwin_arm64.tar.gz"
      sha256 "b4c6ffebf19e92ad9d4e2a9e9fa936146bb587dfc1415a19822b0419545d95ac"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kyoshidajp/clipmerge/releases/download/v0.0.2/clipmerge_linux_amd64.tar.gz"
      sha256 "b4c6ffebf19e92ad9d4e2a9e9fa936146bb587dfc1415a19822b0419545d95ac"
    elsif Hardware::CPU.arm?
      url "https://github.com/kyoshidajp/clipmerge/releases/download/v0.0.2/clipmerge_linux_arm64.tar.gz"
      sha256 "b4c6ffebf19e92ad9d4e2a9e9fa936146bb587dfc1415a19822b0419545d95ac"
    end
  end

  def install
    bin.install "clipmerge"
  end

  test do
    system "#{bin}/clipmerge", "--version"
  end
end
