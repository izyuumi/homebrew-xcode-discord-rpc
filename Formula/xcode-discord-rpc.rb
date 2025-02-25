class XcodeDiscordRpc < Formula
  desc "A simple Discord Rich Presence client for Xcode"
  homepage "https://github.com/izyuumi/xcode-discord-rpc"
  url "https://github.com/izyuumi/xcode-discord-rpc/releases/download/v1.0.0/xcode-discord-rpc.tar.gz"
  sha256 "c8cd478e7e1761ecae03d51d9595c835b2815243e896bd6d88b1ab21d35715ac"
  version "1.0.0"

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
