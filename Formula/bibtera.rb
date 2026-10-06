class Bibtera < Formula
  desc "BibTeX translator using the Tera templating engine"
  homepage "https://github.com/anirbanbasu/bibtera"
  # version "0.1.3"
  url "https://github.com/anirbanbasu/bibtera/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "70b6cf35a2f5d9cc0e42e78d3964547eeedcfa5112bb3cc560414194def5dec3"
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
