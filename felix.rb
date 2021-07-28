# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Felix < Formula
  desc "Felix is a CLI to quickly create golang services"
  homepage "https://github.com/felix-cli/felix"
  url "https://github.com/felix-cli/felix/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "0a07193811c2196bc6b3981bad03ba5dfab9b5fd2f71f269ee7b9052aab72943"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", "-o", bin/"felix", "cmd/felix/main.go"
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
