class XcodeDiscordRpc < Formula
  desc "A simple Discord Rich Presence client for Xcode"
  homepage "https://github.com/izyumidev/xcode-discord-rpc"
  url "https://github.com/izyumidev/xcode-discord-rpc/releases/download/v0.2.2/xcode-discord-rpc.tar.gz"
  sha256 "f3df84052ea63c9ee1191c14bb012a9cefc121b9cfd8c8f084d338b776b9b151"
  version "0.2.2"

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
