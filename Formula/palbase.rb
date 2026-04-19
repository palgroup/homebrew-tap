class Palbase < Formula
  desc "Palbase CLI — develop, test, and deploy backend projects"
  homepage "https://palbase.studio"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/palgroup/palbase-cli/releases/download/v0.2.0/palbase_darwin_arm64.tar.gz"
      sha256 "bee66c21da1e16304aaa095641b459a1d51b6e8c80e0845c63f737ef14b461de"
    end
    on_intel do
      url "https://github.com/palgroup/palbase-cli/releases/download/v0.2.0/palbase_darwin_amd64.tar.gz"
      sha256 "d58e721bcc2de28a7ffbdfb65d6e48322d94f8061002c9748a5e81b70b110fbd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/palgroup/palbase-cli/releases/download/v0.2.0/palbase_linux_arm64.tar.gz"
      sha256 "2f3578f0c0fb3d98d37462e1cb9475b5381873e6a3f8d7f91791df87ce7e9ab3"
    end
    on_intel do
      url "https://github.com/palgroup/palbase-cli/releases/download/v0.2.0/palbase_linux_amd64.tar.gz"
      sha256 "b5329bbe215a082e5a8ee8b6709075eda09a97d593778fe2937a106ee005e3b5"
    end
  end

  def install
    bin.install "palbase"
  end

  test do
    system "#{bin}/palbase", "--version"
  end
end
