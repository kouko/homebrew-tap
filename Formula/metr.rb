class Metr < Formula
  desc "Meeting transcriber with speaker identification and emotion recognition"
  homepage "https://github.com/kouko/meeting-emo-transcriber"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kouko/meeting-emo-transcriber/releases/download/v#{version}/metr-darwin-arm64.tar.gz"
      sha256 "f52b79c9fb7a41718a11a96986e3dbc84e03607b4607218efda08cb736d067d6"
    end
  end

  def install
    bin.install "metr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/metr --version 2>&1")
  end
end
