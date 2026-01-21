class XcodeDiscordRpc < Formula
  desc "A simple Discord Rich Presence client for Xcode"
  homepage "https://github.com/izyuumi/xcode-discord-rpc"
  url "https://github.com/izyuumi/xcode-discord-rpc/releases/download/v1.3.2/xcode-discord-rpc.tar.gz"
  sha256 "1cf52f9d50432d989cd1321715b834436ffd0447b28de52489091b0fb079a0d4"
  version "1.3.2"

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
