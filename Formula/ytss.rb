class Ytss < Formula
  desc "YouTube batch subtitle scraper with whisper transcription and LLM summaries"
  homepage "https://github.com/kouko/youtube-summarize-scraper"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kouko/youtube-summarize-scraper/releases/download/v#{version}/ytss-darwin-arm64.tar.gz"
      sha256 "20a83d936a7a5e04b74a4d156dbf0523196de21ddcb7e9734342eb9de424180a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kouko/youtube-summarize-scraper/releases/download/v#{version}/ytss-linux-arm64.tar.gz"
      sha256 "873e1573aec2bc1b1578439a85e8af3c212a3b9031af6c6f522299a7457438a3"
    else
      url "https://github.com/kouko/youtube-summarize-scraper/releases/download/v#{version}/ytss-linux-amd64.tar.gz"
      sha256 "ab14d2fa7decdf7ae322f3d91e12748fdd2bd541056f20ffc5474253c712416a"
    end
  end

  def install
    bin.install "ytss"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ytss --version")
  end
end
