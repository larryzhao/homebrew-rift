class Rift < Formula
  desc "Manage and run proxy connections from the command line"
  homepage "https://github.com/larryzhao/rift"
  version "0.6.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/larryzhao/rift/releases/download/v0.6.1/rift-0.6.1-darwin-arm64.tar.gz"
      sha256 "9b25288642e3537e0c296f6dcf9e4a9865bf67296ab5e5234bbd447676406b10"
    end
    on_intel do
      url "https://github.com/larryzhao/rift/releases/download/v0.6.1/rift-0.6.1-darwin-amd64.tar.gz"
      sha256 "51a859b18ffee6ef9d4d99cd461a8da973303e87526571a7727d4705a9e98672"
    end
  end

  def install
    bin.install "rift"
  end

  test do
    system "#{bin}/rift", "--help"
  end
end
