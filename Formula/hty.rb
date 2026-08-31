class Hty < Formula
  desc "Interactive terminal automation for AI agents"
  homepage "https://github.com/LatentEvals/hty"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LatentEvals/hty/releases/download/v#{version}/hty-aarch64-macos.tar.gz"
      sha256 "b7cf88f8c2408cbf2cf10b6d0840207f311a347ff2986b7a26c2ba079d42c67b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/LatentEvals/hty/releases/download/v#{version}/hty-x86_64-linux.tar.gz"
      sha256 "d6f063b864ca96ffa2ab9af16cc7428ad83f9b138895d2fef3e795b3b353c942"
    end
    on_arm do
      url "https://github.com/LatentEvals/hty/releases/download/v#{version}/hty-aarch64-linux.tar.gz"
      sha256 "44e130ef73998aa6bac13094b4c3b14b30b6b145f33aee50265770fc159c024f"
    end
  end

  def install
    bin.install "hty"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/hty --help")
  end
end
