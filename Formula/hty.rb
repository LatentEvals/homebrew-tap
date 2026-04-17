class Hty < Formula
  desc "Interactive terminal automation for AI agents"
  homepage "https://github.com/LatentEvals/hty"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/LatentEvals/hty/releases/download/v#{version}/hty-aarch64-macos.tar.gz"
      sha256 "19b2a4548cf1176fed205a16a699eef24ab8f9c5b016ece8fd62cb9ee4315c37"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/LatentEvals/hty/releases/download/v#{version}/hty-x86_64-linux.tar.gz"
      sha256 "3d9f78848dd69f8853b2c53cb34574c9055de1600b7f339683543ae41237ed47"
    end
    on_arm do
      url "https://github.com/LatentEvals/hty/releases/download/v#{version}/hty-aarch64-linux.tar.gz"
      sha256 "6734987578df6f319d85d70c98195419c517ca82157322c598a1b2c097514656"
    end
  end

  def install
    bin.install "hty"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/hty --help")
  end
end
