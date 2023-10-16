class Anyhooks < Formula
  desc "Manages hooks, encryption, and language settings for AnyHooks"
  homepage "https://github.com/Malnati/AnyHooks"
  url "https://github.com/Malnati/AnyHooks/archive/refs/tags/v1.0.0-alpha.tar.gz"
  sha256 "6b12cd09b783180d11d55dbea45ed2e95711fb520b7d64e4b50711462148b05a"
  license "MIT"  # Update this based on your project's license

  depends_on "curl"
  depends_on "jq"
  depends_on "openssl"

  def install
    bin.install "rc/anyhooks"
    bin.install "rc/anyhooksencrypt"
    bin.install "rc/anyhookslang"
    bin.install "rc/anyhooksrc"
    bin.install "rc/anyhooksver"
  end

  test do
    system "#{bin}/rc/anyhooks", "--version"
  end
end
