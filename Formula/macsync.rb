class Macsync < Formula
  desc "Sync your Dock, apps and settings across Macs through iCloud"
  homepage "https://github.com/onlymehdi/macsync"
  url "https://github.com/onlymehdi/macsync/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "bd92df22a02f2c4e7d4f2724e5b5b5c67b4cfcf7dca0058e3afc8a01ee6a61bd"
  license "MIT"

  depends_on :macos
  depends_on "python@3.12"
  depends_on "mas"
  depends_on "dockutil"

  def install
    bin.install "macsync"
  end

  test do
    assert_match "macsync", (bin/"macsync").read
  end
end
