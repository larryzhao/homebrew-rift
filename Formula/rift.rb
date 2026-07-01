class Rift < Formula
  desc "Manage and run proxy connections from the command line"
  homepage "https://github.com/larryzhao/rift"
  version "0.8.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/larryzhao/rift/releases/download/v0.8.0/rift-0.8.0-darwin-arm64.tar.gz"
      sha256 "8f55ec44d10df4fc45c9a062998f30b5dd727c1bb2e885ab5ec9f222a3ed3b5a"
    end
    on_intel do
      url "https://github.com/larryzhao/rift/releases/download/v0.8.0/rift-0.8.0-darwin-amd64.tar.gz"
      sha256 "7ca88e371cd89b0c4f7482c41ab5d8f03859277ee698feb6e367be6ecd97de33"
    end
  end

  def install
    bin.install "rift"
  end

  test do
    system "#{bin}/rift", "--help"
  end
end
