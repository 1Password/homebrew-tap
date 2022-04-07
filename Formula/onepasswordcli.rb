class Onepasswordcli < Formula
  desc "Command-line interface for 1Password"
  homepage "https://1password.com"
  version "2.0.0"
   if OS.mac?
    if Hardware::CPU.arm?
      url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/1password-cli_v#{version}_darwin_arm64.tar.gz"
      sha256 "413f421e8d260226e305af4b48a5003b74d78f3724bb2305c36e22059c04f981"
    elsif Hardware::CPU.intel?
      url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/1password-cli_v#{version}_darwin_amd64.tar.gz"
      sha256 "b044e1565fa162df790875fd7a57f05bd6121fddc1d4e320d2c3007ccf5b23d1"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_linux_amd64_v#{version}.tar.gz"
      sha256 "eb4fb92779d3b6bef3a61c56bd4b7a0872034b3fe55123dba3584d7db948215a"
    end
  end
   def install
    bin.install "op"
  end
end

