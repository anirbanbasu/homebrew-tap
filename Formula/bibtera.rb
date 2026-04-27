class Bibtera < Formula
  desc "BibTeX translator using the Tera templating engine"
  homepage "https://github.com/anirbanbasu/bibtera"
  # version "0.1.0"
  url "https://github.com/anirbanbasu/bibtera/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "667af4dec3da7fcbce9fc0c1b04118932dc4ca87ad76616dc9d94bb8e5d4aec5"
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
    output = shell_output("#{bin}/bibtera --version")
    assert_match(/bibtera/, output)
  end
end
