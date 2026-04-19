class Palbase < Formula
  desc "Palbase CLI — develop, test, and deploy backend projects"
  homepage "https://palbase.studio"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/palgroup/palbase-cli/releases/download/v0.1.0/palbase_darwin_arm64.tar.gz"
      sha256 "8301f89350d0e6e0e06084843de4a4a2e803c8deabae1de32bf287dfad917a05"
    end
    on_intel do
      url "https://github.com/palgroup/palbase-cli/releases/download/v0.1.0/palbase_darwin_amd64.tar.gz"
      sha256 "edf6c55ce1733993260f50349e32d888eb08c2ca5a2604de18b5856c8ca993a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/palgroup/palbase-cli/releases/download/v0.1.0/palbase_linux_arm64.tar.gz"
      sha256 "bad13da3ae5e2ee2ce1c995d43b942987183cb4a018708e416612aeedae1e3c9"
    end
    on_intel do
      url "https://github.com/palgroup/palbase-cli/releases/download/v0.1.0/palbase_linux_amd64.tar.gz"
      sha256 "4b8c4ef811a6dcbb97f22c842ced86092d918049916819bcf3847a98ca0dabac"
    end
  end

  def install
    bin.install "palbase"
  end

  test do
    system "#{bin}/palbase", "--version"
  end
end
