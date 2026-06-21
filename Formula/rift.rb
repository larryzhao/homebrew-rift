class Rift < Formula
  desc "Manage and run proxy connections from the command line"
  homepage "https://github.com/larryzhao/rift"
  version "0.6.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/larryzhao/rift/releases/download/v0.6.2/rift-0.6.2-darwin-arm64.tar.gz"
      sha256 "bb8e9b221625b0d659e9a8cb815a7527bdf7b9c6d3dab9a9dd2d60dae7366c7c"
    end
    on_intel do
      url "https://github.com/larryzhao/rift/releases/download/v0.6.2/rift-0.6.2-darwin-amd64.tar.gz"
      sha256 "341154fe1d8220e2fb7ec9a630254fb52bda6badfe61fc0cbe9de57a91d9fb66"
    end
  end

  def install
    bin.install "rift"
  end

  test do
    system "#{bin}/rift", "--help"
  end
end
