class Rift < Formula
  desc "Manage and run proxy connections from the command line"
  homepage "https://github.com/larryzhao/rift"
  version "0.7.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/larryzhao/rift/releases/download/v0.7.0/rift-0.7.0-darwin-arm64.tar.gz"
      sha256 "535d29021bb367bf897475a57e7c4893c7d82500dce756db8d14fcc1deae4ad9"
    end
    on_intel do
      url "https://github.com/larryzhao/rift/releases/download/v0.7.0/rift-0.7.0-darwin-amd64.tar.gz"
      sha256 "d4eac2a91a6c3d9fd9e9c3a6a4cc6f5e679d347d2a1e57405dc6d4ebb0716350"
    end
  end

  def install
    bin.install "rift"
  end

  test do
    system "#{bin}/rift", "--help"
  end
end
