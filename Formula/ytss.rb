class Ytss < Formula
  desc "YouTube batch subtitle scraper with whisper transcription and LLM summaries"
  homepage "https://github.com/kouko/youtube-summarize-scraper"
  version "0.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kouko/youtube-summarize-scraper/releases/download/v#{version}/ytss-darwin-arm64.tar.gz"
      sha256 "6c7f7d5a98dc52007dd13a2410d1183610053bd0479db47903f6c47480f5ae76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kouko/youtube-summarize-scraper/releases/download/v#{version}/ytss-linux-arm64.tar.gz"
      sha256 "8df905204b2103513b7f14ba87f18bfb1ec7d889cc31019ba0dd7a1ad4ab84e1"
    else
      url "https://github.com/kouko/youtube-summarize-scraper/releases/download/v#{version}/ytss-linux-amd64.tar.gz"
      sha256 "c9835266cbc0a0bf3a448069c361274175c2c399ea4b1b0c32749d5db27fd8f8"
    end
  end

  def install
    bin.install "ytss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ytss --version")
  end
end
