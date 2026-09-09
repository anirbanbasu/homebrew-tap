class Odir < Formula
  desc "Ollama Downloader in Rust (ODIR): a model downloader for Ollama"
  homepage "https://github.com/anirbanbasu/odir"
  # version "0.2.0"
  url "https://github.com/anirbanbasu/odir/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "ed877f9e5f1c84063c4f22f5e0d88e3e78f35c47403dfd3d76d191ff7afbd57d"
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
