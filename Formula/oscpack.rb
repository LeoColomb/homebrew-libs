class Oscpack < Formula
  desc "A simple C++ Open Sound Control (OSC) packet manipulation library"
  homepage "https://code.google.com/archive/p/oscpack/"
  url "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/oscpack/oscpack_1_1_0.zip"
  sha256 "8389db649ed0a47b52bffe60aeec5157d192f59b4870d7487425d75032b05060"

  needs :cxx11

  def install
    ENV.cxx11

    system "make"
    system "make", "install-local"

    include.install Dir["oscpack/include/*"]
    lib.install Dir["oscpack/lib/*"]
  end

  test do
    system "false"
  end
end
