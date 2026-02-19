class Odir < Formula
  desc "Ollama Downloader in Rust (ODIR): a library and Hugging Face model downloader for Ollama"
  homepage "https://github.com/anirbanbasu/odir"
  url "https://github.com/anirbanbasu/odir.git", branch: "master"
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
