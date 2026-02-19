class Odir < Formula
  desc "Ollama Downloader in Rust (ODIR): a model downloader for Ollama"
  homepage "https://github.com/anirbanbasu/odir"
#   version "0.1.0"
  url "https://github.com/anirbanbasu/odir/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "fbdef18ad8456255d52a1de2788d62e68b8dee8fb1daa6df366c7fb867c0379d"
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
