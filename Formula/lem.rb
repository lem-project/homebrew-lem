class Lem < Formula
  desc "Common Lisp editor/IDE with high expansibility"
  homepage "https://github.com/lem-project/lem"
  url "https://github.com/lem-project/lem/releases/download/v2.0.0-alpha/lem.zip"
  sha256 "113aa03bb894459b17b3e9e087413f5ed414f87831be1f78fb7ec854d07732c1"
  license "MIT"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install "lem"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test lem`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
