class Anyhooks < Formula
  desc "Manages hooks, encryption, and language settings for AnyHooks"
  homepage "https://github.com/Malnati/AnyHooks"
  url "https://github.com/Malnati/AnyHooks/archive/refs/tags/v1.2.0-beta+addremove.tar.gz"
  sha256 "bf2deb96ecaf7ea1fbe30bc8e9cc213e454aa977cc5385d4ba3e32adbbed85e5"
  license "MIT" # Update this based on your project's license

  depends_on "coreutils"
  depends_on "curl"
  depends_on "jq"
  depends_on "openssl"

  def install
    Dir["rc/*", "rc/.*", "hooks/"].each do |file|
      next if File.directory?(file) # Skip directories

      if file.end_with?(".enc")
        # Place non-executable files in a different directory
        prefix.install file
      else
        bin.install file
      end
    end
  end

  test do
    system "#{bin}/rc/anyhooks", "--version"
  end
end
