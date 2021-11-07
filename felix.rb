# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Felix < Formula
  desc "Felix is a CLI to quickly create golang services"
  homepage "https://github.com/felix-cli/felix"
  url "https://github.com/felix-cli/felix.git",
    using: :git,
    tag: "v0.1.6",
    revision: "1bafd1872f00989a32c18815e1ef07d68789738a"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "make", "install", "GOBIN=#{bin}"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test felix`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
