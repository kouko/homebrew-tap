class Rlss < Formula
  desc "Fetch Safari/Chrome Reading Lists, extract content, summarize with LLM to Obsidian Markdown"
  homepage "https://github.com/kouko/reading-list-summarize-scraper"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kouko/reading-list-summarize-scraper/releases/download/v0.1.0/rlss-darwin-arm64.tar.gz"
      sha256 "3bd65d6c81e7ec2206de402b7d8a14505690a1e2426a7e5d4239ea5f8c4217de"
    else
      url "https://github.com/kouko/reading-list-summarize-scraper/releases/download/v0.1.0/rlss-darwin-amd64.tar.gz"
      sha256 "6ea197cf3872808b9e93963a5bc9c01fd380bf179e3f107fad169d870c1d0ab9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kouko/reading-list-summarize-scraper/releases/download/v0.1.0/rlss-linux-arm64.tar.gz"
      sha256 "266eb01269f2496b354714e7060d577c3a9ae48d8a5193f46ae635d1c7adbe7a"
    else
      url "https://github.com/kouko/reading-list-summarize-scraper/releases/download/v0.1.0/rlss-linux-amd64.tar.gz"
      sha256 "cf86a5d9b2db17298309c8613f0b68f57e9420f808e2a8303a038c35440879a0"
    end
  end

  def install
    bin.install "rlss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rlss --version")
  end
end
