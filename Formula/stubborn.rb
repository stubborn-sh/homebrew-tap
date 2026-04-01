class Stubborn < Formula
  desc "CLI for the Stubborn contract governance platform"
  homepage "https://stubborn.sh"
  version "0.0.1"
  license "Stubborn Commercial License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stubborn-sh/stubborn-pro/releases/download/v#{version}/stubborn-#{version}-osx-aarch_64.tar.gz"
      sha256 "30d7f00e06ae4dd86f78a4d0c4e4a6294df2fd40bf1ee390f739ceb818aa4479"
    else
      url "https://github.com/stubborn-sh/stubborn-pro/releases/download/v#{version}/stubborn-#{version}-osx-x86_64.tar.gz"
      sha256 "ac08cb3a392b8f110cfec5554cfad5db1428f9aaaad3f1303538c76d142312c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/stubborn-sh/stubborn-pro/releases/download/v#{version}/stubborn-#{version}-linux-aarch_64.tar.gz"
      sha256 "75b24d124a2eff4b16d9c7f627e6a5d03d43cb238b71b694922bab778b72e4c8"
    else
      url "https://github.com/stubborn-sh/stubborn-pro/releases/download/v#{version}/stubborn-#{version}-linux-x86_64.tar.gz"
      sha256 "a663619231bae4241d8bc7e780fbd70b6d2c85503edc5c2e5c7bd54c3a249f73"
    end
  end

  def install
    bin.install "stubborn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stubborn --version")
  end
end
