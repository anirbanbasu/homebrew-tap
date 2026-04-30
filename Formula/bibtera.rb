class Bibtera < Formula
  desc "BibTeX translator using the Tera templating engine"
  homepage "https://github.com/anirbanbasu/bibtera"
  url "https://github.com/anirbanbasu/bibtera/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "212d4d71adad18c10eae74f1c90ee76e28429841554f41be4bad8b27976b8020"
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
