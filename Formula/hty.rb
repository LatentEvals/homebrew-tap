class Hty < Formula
  desc "Interactive terminal automation for AI agents"
  homepage "https://github.com/LatentEvals/hty"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LatentEvals/hty/releases/download/v#{version}/hty-aarch64-macos.tar.gz"
      sha256 "ea80f3beb39f0a526b0f43efc1f410fda5715fefb6ef201911aba6d00ab2e109"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/LatentEvals/hty/releases/download/v#{version}/hty-x86_64-linux.tar.gz"
      sha256 "7151d1ee8255b617a7fc07439fa24f8abf2d5eddaebf55e1b85ee2c335c8114c"
    end
    on_arm do
      url "https://github.com/LatentEvals/hty/releases/download/v#{version}/hty-aarch64-linux.tar.gz"
      sha256 "6d8955b66219a0a17eb2756a0bc4bd47f483438886d9f46d523e3860f8d3de22"
    end
  end

  def install
    bin.install "hty"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/hty --help")
  end
end
