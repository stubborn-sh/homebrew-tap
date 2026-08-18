class Stubborn < Formula
  desc "CLI for the Stubborn contract governance platform"
  homepage "https://stubborn.sh"
  version "0.1.0"
  license "Stubborn Commercial License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stubborn-sh/stubborn-pro/releases/download/v#{version}/stubborn-#{version}-osx-aarch_64.tar.gz"
      sha256 "ef2145992e9a5cb688b05c2d3ff9b4e7e6faf71df21ddd983c945d0b05264b80"
    else
      url "https://github.com/stubborn-sh/stubborn-pro/releases/download/v#{version}/stubborn-#{version}-osx-x86_64.tar.gz"
      sha256 "e34aea9a7513e78eae6a4f2dc6e00e907a0276ab173d14498114a691cb242be1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stubborn-sh/stubborn-pro/releases/download/v#{version}/stubborn-#{version}-linux-aarch_64.tar.gz"
      sha256 "abec01f58a2a19a777487ed6e1fbea940bbaf241ccb4434a2a0644a70049c405"
    else
      url "https://github.com/stubborn-sh/stubborn-pro/releases/download/v#{version}/stubborn-#{version}-linux-x86_64.tar.gz"
      sha256 "86f8c91920d947523e7308543762f7f2e152f15f47f0d8219dda310a401de4ee"
    end
  end

  def install
    bin.install "stubborn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stubborn --version")
  end
end
