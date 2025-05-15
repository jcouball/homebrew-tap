class Scripts < Formula
  desc "A collection of personal command-line utilities by jcouball"
  homepage "https://github.com/jcouball/scripts"
  license "MIT"

  version "0.1.5"
  url "https://github.com/jcouball/scripts/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "fb4a8000cf40e292206eba764ba91ad07d6df5e15263829e3b17ff3b0a438711"

  def install
    # The 'jcouball/scripts' repository places all executable scripts directly in the
    # 'bin' directory. This command will install all files from the 'bin' directory
    # of the downloaded tarball into Homebrew's bin directory, making them available
    # in the PATH.
    bin.install Dir["bin/*"]
  end

  test do
    # Verify that one of the scripts is installed and executable.
    #
    # Replace "ai-prompt" with any script name from your collection that is suitable
    # for a quick test.
    assert_predicate bin/"ai-prompt", :exist?, "ai-prompt script should exist"
    assert_predicate bin/"ai-prompt", :executable?, "ai-prompt script should be executable"

    # You could also try to run a command if it has a simple, non-destructive output,
    # like a --version or --help flag.
    #
    # Example: system "#{bin}/ai-prompt", "--help"
  end
end
