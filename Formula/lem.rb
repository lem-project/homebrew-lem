class Lem < Formula
  desc " Common Lisp editor/IDE with high expansibility "
  homepage "https://github.com/lem-project/lem"
  url "https://github.com/lem-project/lem/releases/download/v2.0.0-alpha/lem-darwin-arm64-ncurses.zip"
  sha256 "fe2485e36ecf0d3668a113d4212ecb17f96230f54f00fb7beec927302b53d30a"
  license "MIT"

  def install
    prefix.install Dir["*"]
    bin.install_symlink prefix/"lem"
  end
end
