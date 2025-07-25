# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Octoplex < Formula
  desc "Octoplex is a live video restreamer for the terminal."
  homepage "https://github.com/rfwatson/octoplex"
  version "0.0.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rfwatson/octoplex/releases/download/v0.0.14/octoplex_Darwin_x86_64.tar.gz"
      sha256 "347445a1ee6b8a7608374cd6e1b77adc4911e9907c18fdb5809ace0dfb604503"

      def install
        bin.install "octoplex"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rfwatson/octoplex/releases/download/v0.0.14/octoplex_Darwin_arm64.tar.gz"
      sha256 "77e591c5d485c4dc1aec3136bdf4580d77c17cd89837bcf0448e8b63a7d3aca9"

      def install
        bin.install "octoplex"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/rfwatson/octoplex/releases/download/v0.0.14/octoplex_Linux_x86_64.tar.gz"
      sha256 "ec490da2b92bb8936efd265756572e8cd403fd3b4ab6e5bb07bd492ec1695c40"
      def install
        bin.install "octoplex"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/rfwatson/octoplex/releases/download/v0.0.14/octoplex_Linux_arm64.tar.gz"
      sha256 "2bc5d54f2d4a9d66641660ba41d752db18e5dc1ece05449f4f6a5e99e6bafeef"
      def install
        bin.install "octoplex"
      end
    end
  end

  test do
    system "#{bin}/octoplex -h"
  end
end
