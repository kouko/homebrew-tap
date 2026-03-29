class Ytss < Formula
  desc "YouTube batch subtitle scraper with whisper transcription and LLM summaries"
  homepage "https://github.com/kouko/youtube-summarize-scraper"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kouko/youtube-summarize-scraper/releases/download/v#{version}/ytss-darwin-arm64.tar.gz"
      sha256 "41c6aae3bc9b94d4d3138d0d5a1ff102825026dd1df39d75f7f31aa33c6d3bc5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kouko/youtube-summarize-scraper/releases/download/v#{version}/ytss-linux-arm64.tar.gz"
      sha256 "565769f917fb48d4ee21921e100ab6d63d1f873cc13971c283d8eff9847f1660"
    else
      url "https://github.com/kouko/youtube-summarize-scraper/releases/download/v#{version}/ytss-linux-amd64.tar.gz"
      sha256 "2eaa5fdcc869b2d88327204be80b0f68844ef981c3bba0ae4ebe9f16b5bfcf60"
    end
  end

  def install
    bin.install "ytss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ytss --version")
  end
end
