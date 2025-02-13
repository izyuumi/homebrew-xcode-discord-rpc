class XcodeDiscordRpc < Formula
  desc "A simple Discord Rich Presence client for Xcode"
  homepage "https://github.com/izyumidev/xcode-discord-rpc"
  url "https://github.com/izyuumi/xcode-discord-rpc/releases/download/v0.3.2/xcode-discord-rpc.tar.gz"
  sha256 "e87fe4615596b86b4c1ea0f436ebbd556e5ad4c1b7810872cdee53664f3cbc37"
  version "0.3.2"

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
