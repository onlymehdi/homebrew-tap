class Macsync < Formula
  desc "Sync your Dock and apps across Macs through iCloud"
  homepage "https://github.com/onlymehdi/macsync"
  url "https://github.com/onlymehdi/macsync/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f505b942d750880061dcd11779b4d79f653a6f3757593cefe31155f725fcc642"
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
