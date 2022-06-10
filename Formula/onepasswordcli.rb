class Onepasswordcli < Formula
  desc "Command-line interface for 1Password"
  homepage "https://1password.com"
  version "2.4.1"
   if OS.mac?
    if Hardware::CPU.arm?
      url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/1password-cli_v#{version}_darwin_arm64.tar.gz"
      sha256 "6e870b558400e568003ce3e677c0b6a08266f79ff9b86acfe82f875d033aff2e"
    elsif Hardware::CPU.intel?
      url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/1password-cli_v#{version}_darwin_amd64.tar.gz"
      sha256 "c9f627fcf0ee4abd5f0ecf01d08f1c96fcb9863664a58ccfa5512f911e7378ed"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_linux_amd64_v#{version}.tar.gz"
      sha256 "fcc3ffdb0547f1f4e65f30f56e7fa27b9d944355ef7be50e84b7bb43dcd05cb0"
    end
  end
   def install
    bin.install "op"
  end
end
