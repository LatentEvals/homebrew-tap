class Hty < Formula
  desc "Interactive terminal automation for AI agents"
  homepage "https://github.com/LatentEvals/hty"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LatentEvals/hty/releases/download/v#{version}/hty-aarch64-macos.tar.gz"
      sha256 "2e5f82bbef3c0babc85b1d1da68a81e3e1c78e936c8e6712054a3ee604b0798f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/LatentEvals/hty/releases/download/v#{version}/hty-x86_64-linux.tar.gz"
      sha256 "0936eb1e630c9d88888bef8e74ae86299631f4f23dcd8b4ee4912729b27d7e15"
    end
    on_arm do
      url "https://github.com/LatentEvals/hty/releases/download/v#{version}/hty-aarch64-linux.tar.gz"
      sha256 "29cd0550360f1ed4b37c54c826a4dd6f4a37408b4bc11030f48c8790c191fde8"
    end
  end

  def install
    bin.install "hty"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/hty --help")
  end
end
