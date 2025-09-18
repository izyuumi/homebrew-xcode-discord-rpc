class XcodeDiscordRpc < Formula
  desc "A simple Discord Rich Presence client for Xcode"
  homepage "https://github.com/izyuumi/xcode-discord-rpc"
  url "https://github.com/izyuumi/xcode-discord-rpc/releases/download/v1.2.0/xcode-discord-rpc.tar.gz"
  sha256 "1eca848499fe82a2906fb8fb7f039943ab2b246063abc498b631c9908b4366a6"
  version "1.2.0"

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
