class Anyhooks < Formula
  desc "Manages hooks, encryption, and language settings for AnyHooks"
  homepage "https://github.com/Malnati/AnyHooks"
  url "https://github.com/Malnati/AnyHooks/archive/refs/tags/v0.2-alpha.tar.gz"
  sha256 "648fea19c1fa351ca337b49b0d0311038eac6ae916d6041c9f7e83d7fa1db17d"
  license "MIT"  # Update this based on your project's license

  depends_on "curl"
  depends_on "jq"
  depends_on "openssl"

  def install
    bin.install "rc/anyhooks"
  end

  test do
    system "#{bin}/rc/anyhooks", "--version"
  end
end
