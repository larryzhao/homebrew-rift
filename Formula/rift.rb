class Rift < Formula
  desc "Manage and run proxy connections from the command line"
  homepage "https://github.com/larryzhao/rift"
  version "0.9.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/larryzhao/rift/releases/download/v0.9.0/rift-0.9.0-darwin-arm64.tar.gz"
      sha256 "a4920fb7171f6e127830998533ddeb58baba72411599431f3eead88d8ad50f7f"
    end
    on_intel do
      url "https://github.com/larryzhao/rift/releases/download/v0.9.0/rift-0.9.0-darwin-amd64.tar.gz"
      sha256 "d7b9f238fda3ca6cc674c26290bba120d7b2509b3f2e5fe19f4fa193818c9ca2"
    end
  end

  def install
    bin.install "rift"
  end

  test do
    system "#{bin}/rift", "--help"
  end
end
