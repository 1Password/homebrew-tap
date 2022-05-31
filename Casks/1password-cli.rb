cask "1password-cli" do
  version "2.4.0"
  sha256 "7d8cc5e27aaea3bfa0f6c5025dc7d9900fcd1074a7d3e305bf3e32505bc7d517"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_apple_universal_v#{version}.pkg"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  pkg "op_apple_universal_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
