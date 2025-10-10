class XcodeDiscordRpc < Formula
  desc "A simple Discord Rich Presence client for Xcode"
  homepage "https://github.com/izyuumi/xcode-discord-rpc"
  url "https://github.com/izyuumi/xcode-discord-rpc/releases/download/v1.3.0/xcode-discord-rpc.tar.gz"
  sha256 "f6709f6c6aa99504cec82964f76d5b1e45c4071c537e11df03fd79ade12a9d56"
  version "1.3.0"

  def install
    bin.install "xcode-discord-rpc"
  end

  service do
    run opt_bin/"xcode-discord-rpc"
    keep_alive true
    working_dir var/"xcode-discord-rpc"
    error_log_path var/"xcode-discord-rpc/discord-rpc.log"
  end
end
