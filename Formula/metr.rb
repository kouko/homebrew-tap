class Metr < Formula
  desc "Meeting transcriber with speaker identification and emotion recognition"
  homepage "https://github.com/kouko/meeting-emo-transcriber"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kouko/meeting-emo-transcriber/releases/download/v#{version}/metr-darwin-arm64.tar.gz"
      sha256 "b1307164800953eb60733358ed48ec4941e5d7630cef63c27f92d78d934c5ff8"
    end
  end

  def install
    bin.install "metr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/metr --version 2>&1")
  end
end
