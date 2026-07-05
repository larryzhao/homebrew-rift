class Rift < Formula
  desc "Manage and run proxy connections from the command line"
  homepage "https://github.com/larryzhao/rift"
  version "0.9.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/larryzhao/rift/releases/download/v0.9.1/rift-0.9.1-darwin-arm64.tar.gz"
      sha256 "38f3d0092d9306444d909057288e41306301715a6e1b0377e12edf61cd5e26ca"
    end
    on_intel do
      url "https://github.com/larryzhao/rift/releases/download/v0.9.1/rift-0.9.1-darwin-amd64.tar.gz"
      sha256 "2b8de26b424a653418c8c7161ce130dbc6343ef93ea3416dffb0b325e50e9b93"
    end
  end

  def install
    bin.install "rift"
  end

  test do
    system "#{bin}/rift", "--help"
  end
end
