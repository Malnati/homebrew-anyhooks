class Anyhooks < Formula
  desc "Manages hooks, encryption, and language settings for AnyHooks"
  homepage "https://github.com/Malnati/AnyHooks"
  url "https://github.com/Malnati/AnyHooks/archive/refs/tags/v1.0.0-alpha.tar.gz"
  sha256 "2fe2a759416c5f09778fe41b50ab07fba0cf964c13fb7c0e6a3cf6428e87e3a2"
  license "MIT"  # Update this based on your project's license

  depends_on "curl"
  depends_on "jq"
  depends_on "openssl"

  def install
    Dir["rc/*", "rc/.*"].each do |file|
      next if File.directory?(file)  # Skip directories
      bin.install file
    end
  end

  test do
    system "#{bin}/rc/anyhooks", "--version"
  end
end
