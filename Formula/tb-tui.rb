# Rendered by .github/workflows/bump-tap.yml from a published cli-v* release and committed to
# golobitch/homebrew-tap. Do not edit the copy in the tap by hand — it is overwritten.
class TbTui < Formula
  desc "Read-only terminal browser for TigerBeetle clusters"
  homepage "https://golobitch.github.io/tb-explorer/"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/golobitch/tb-explorer/releases/download/cli-v0.1.0/tb-tui-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "60c37205871db74d34dc8d0fe9d66e618a1f5fd2e00869bae52094275f367bc9"
    end
    on_intel do
      url "https://github.com/golobitch/tb-explorer/releases/download/cli-v0.1.0/tb-tui-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "a3bad2d94a58ad0c6098e69dfc56aa4e428eaef4663b79542199159b66cb5cae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/golobitch/tb-explorer/releases/download/cli-v0.1.0/tb-tui-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29fc6c9953336657531c83ba75d1c7caa8ded2e45a54068aa47b51dc7e08a8e9"
    end
    on_intel do
      url "https://github.com/golobitch/tb-explorer/releases/download/cli-v0.1.0/tb-tui-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0810de5201e2e166e6e0c3f20bf427ab0dacdc201580d61f38d5da0620666be8"
    end
  end

  def install
    bin.install "tb-tui"
    doc.install "README.md"
  end

  test do
    # --help needs no cluster and no terminal, so it is the one thing that always works.
    assert_match "tb-tui", shell_output("#{bin}/tb-tui --help")
  end
end
