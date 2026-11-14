class AnonsantaCli < Formula
  desc "Zero-Email Cryptographic Derangement Secret Santa & Exclusion Graph CLI"
  homepage "https://anonsanta.com"
  url "https://github.com/AbigailDavised/homebrew-anonsanta/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "2048aff6863651cc48df7fb1f7d868e69bc890ab00ddab13578335f23dadaa8c"
  license "MIT"

  depends_on "node"

  def install
    chmod 0755, "bin/anonsanta-cli"
    bin.install "bin/anonsanta-cli"
  end

  test do
    output = shell_output("#{bin}/anonsanta-cli --version")
    assert_match "1.0.0", output
  end
end
