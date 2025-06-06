# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octoplex < Formula
  desc "Octoplex is a live video restreamer for the terminal."
  homepage "https://github.com/rfwatson/octoplex"
  version "0.0.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rfwatson/octoplex/releases/download/v0.0.12/octoplex_Darwin_x86_64.tar.gz"
      sha256 "c1c4b6cabb6062025aeffdeca0457ec7d643ee46a258945b6812a805ee4c225e"

      def install
        bin.install "octoplex"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rfwatson/octoplex/releases/download/v0.0.12/octoplex_Darwin_arm64.tar.gz"
      sha256 "f45e7098aabcc6a28f0e2580f43df627c321cc68c884e20b6175b501a86e9060"

      def install
        bin.install "octoplex"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/rfwatson/octoplex/releases/download/v0.0.12/octoplex_Linux_x86_64.tar.gz"
      sha256 "983b90dddf2d9e213265857ab75c41c3671dcc97ca23ea20c056dc0c83c86754"
      def install
        bin.install "octoplex"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/rfwatson/octoplex/releases/download/v0.0.12/octoplex_Linux_arm64.tar.gz"
      sha256 "64f4870605b834f352d5c6e52e8e31e70d753a37b43593004212c59965f4e286"
      def install
        bin.install "octoplex"
      end
    end
  end

  test do
    system "#{bin}/octoplex -h"
  end
end
