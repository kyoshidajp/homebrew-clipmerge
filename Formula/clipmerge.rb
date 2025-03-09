class Clipmerge < Formula
  desc "A CLI tool for merging clipboard content"
  homepage "https://github.com/kyoshidajp/clipmerge"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kyoshidajp/clipmerge/releases/download/v1.0.0/clipmerge_darwin_amd64.tar.gz"
      sha256 "your_sha256_hash_here"
    elsif Hardware::CPU.arm?
      url "https://github.com/kyoshidajp/clipmerge/releases/download/v1.0.0/clipmerge_darwin_arm64.tar.gz"
      sha256 "your_sha256_hash_here"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kyoshidajp/clipmerge/releases/download/v1.0.0/clipmerge_linux_amd64.tar.gz"
      sha256 "your_sha256_hash_here"
    elsif Hardware::CPU.arm?
      url "https://github.com/kyoshidajp/clipmerge/releases/download/v1.0.0/clipmerge_linux_arm64.tar.gz"
      sha256 "your_sha256_hash_here"
    end
  end

  def install
    bin.install "clipmerge"
  end

  test do
    system "#{bin}/clipmerge", "--version"
  end
end
