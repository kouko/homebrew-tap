class Rlss < Formula
  desc "Fetch Safari/Chrome Reading Lists, extract content, summarize with LLM to Obsidian Markdown"
  homepage "https://github.com/kouko/reading-list-summarize-scraper"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kouko/reading-list-summarize-scraper/releases/download/v0.2.0/rlss-darwin-arm64.tar.gz"
      sha256 "10a493c60f9aaea6ae410e378fbdaee294563e86f162de84ac0df5c014c4c31a"
    else
      url "https://github.com/kouko/reading-list-summarize-scraper/releases/download/v0.2.0/rlss-darwin-amd64.tar.gz"
      sha256 "10101d913a56b29d94ece39fe18e8c9708b9969b1491a03e6168dc82059e1edc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kouko/reading-list-summarize-scraper/releases/download/v0.2.0/rlss-linux-arm64.tar.gz"
      sha256 "713414c4c82fc644e489a43bdac62fa4a482d1198d07ef2423dcdf5fd4a24df4"
    else
      url "https://github.com/kouko/reading-list-summarize-scraper/releases/download/v0.2.0/rlss-linux-amd64.tar.gz"
      sha256 "1bc64015b213e9a7d90c4187dea091c776de6519de0d5d31aa89c75ab3fe7888"
    end
  end

  def install
    bin.install "rlss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rlss --version")
  end
end
