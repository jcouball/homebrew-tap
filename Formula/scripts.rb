class Scripts < Formula
  desc "A collection of personal command-line utilities by jcouball"
  homepage "https://github.com/jcouball/scripts"
  license "MIT"

  version "0.3.2"
  url "https://github.com/jcouball/scripts/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "ea85352d09b4b442029fa7be08876596f3f14786f7efa1f305332d468529c0a5"

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
