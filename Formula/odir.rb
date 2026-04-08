class Odir < Formula
  desc "Ollama Downloader in Rust (ODIR): a model downloader for Ollama"
  homepage "https://github.com/anirbanbasu/odir"
  # version "0.1.1"
  url "https://github.com/anirbanbasu/odir/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "fbae94d21d152da6c7e4a72b39c65b321a4ae35b57d69161986cce5ba86e4749"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  # Prevent Homebrew from attempting to fetch bottles from homebrew/core
  def pour_bottle?
    false
  end

  test do
    output = shell_output("#{bin}/odir --version")
    assert_match(/odir/, output)
  end
end
