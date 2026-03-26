class Stubborn < Formula
  desc "CLI for the Stubborn contract governance platform"
  homepage "https://stubborn.sh"
  version "0.1.0-SNAPSHOT"
  license "Stubborn Commercial License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stubborn-sh/stubborn-pro/releases/download/v#{version}/stubborn-#{version}-osx-aarch_64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/stubborn-sh/stubborn-pro/releases/download/v#{version}/stubborn-#{version}-osx-x86_64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stubborn-sh/stubborn-pro/releases/download/v#{version}/stubborn-#{version}-linux-aarch_64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/stubborn-sh/stubborn-pro/releases/download/v#{version}/stubborn-#{version}-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "stubborn"
  end

  test do
    assert_match "stubborn", shell_output("#{bin}/stubborn --version")
  end
end
