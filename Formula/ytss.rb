class Ytss < Formula
  desc "YouTube batch subtitle scraper with whisper transcription and LLM summaries"
  homepage "https://github.com/kouko/youtube-summarize-scraper"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kouko/youtube-summarize-scraper/releases/download/v#{version}/ytss-darwin-arm64.tar.gz"
      sha256 "0d07dab08380499e003690788033b08588a5576545fca2e802d13c8d651c0d1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kouko/youtube-summarize-scraper/releases/download/v#{version}/ytss-linux-arm64.tar.gz"
      sha256 "e3e44a981893d77887b7be3666fa1234bae077d1d60fe536fc5c58d967f806f3"
    else
      url "https://github.com/kouko/youtube-summarize-scraper/releases/download/v#{version}/ytss-linux-amd64.tar.gz"
      sha256 "7fbe442d3830e733f79c40ed61452c41a1377b2f2a376d611a6d21f525e12849"
    end
  end

  def install
    bin.install "ytss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ytss --version")
  end
end
