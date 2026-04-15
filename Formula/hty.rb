class Hty < Formula
  desc "Interactive terminal automation for AI agents"
  homepage "https://github.com/LatentEvals/hty"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LatentEvals/hty/releases/download/v#{version}/hty-aarch64-macos.tar.gz"
      sha256 "dbaa3a75afbf2fadd91cf326a227ce5feaef0bb2d2b85cb7c170cc6174bc5bdb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/LatentEvals/hty/releases/download/v#{version}/hty-x86_64-linux.tar.gz"
      sha256 "b13ace078140903efb863a75ef3300b1469b29c5637905eb6e16716b6da69e3e"
    end
    on_arm do
      url "https://github.com/LatentEvals/hty/releases/download/v#{version}/hty-aarch64-linux.tar.gz"
      sha256 "024e8f845a055b179ebc78ed7abcc050f27cd0436b899f9ed6e7e088796fbc6e"
    end
  end

  def install
    bin.install "hty"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/hty --help")
  end
end
