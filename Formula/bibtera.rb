class Bibtera < Formula
  desc "A BibTeX translator using the Tera templating engine"
  homepage "https://github.com/anirbanbasu/bibtera"
  # version "0.1.0"
  url "https://github.com/anirbanbasu/bibtera/archive/refs/tags/v0.1.0.tar.gz"
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
    output = shell_output("#{bin}/bibtera --version")
    assert_match(/bibtera/, output)
  end
end
