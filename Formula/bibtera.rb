class Bibtera < Formula
  desc "BibTeX translator using the Tera templating engine"
  homepage "https://github.com/anirbanbasu/bibtera"
  # version "0.1.0"
  url "https://github.com/anirbanbasu/bibtera/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "1d0a555fe9a97bd77cdf19838d34d0dd2cf20a3e5338b774c385621a08c8c67c"
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
