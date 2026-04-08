class Metr < Formula
  desc "Meeting transcriber with speaker identification and emotion recognition"
  homepage "https://github.com/kouko/meeting-emo-transcriber"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kouko/meeting-emo-transcriber/releases/download/v#{version}/metr-darwin-arm64.tar.gz"
      sha256 "e96d47734bc7e5389dfb4241fa60729ff7d33b0fc84b33d8eaf0da38478bf9df"
    end
  end

  def install
    bin.install "metr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/metr --version 2>&1")
  end
end
