cask "1password-cli" do
  version "2.13.0"
  sha256 "900f8d8d7acd717d1d2a1fa03494fcdaf6d018a14e53cccfbc63ea06db81a8e0"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_apple_universal_v#{version}.pkg"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  pkg "op_apple_universal_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
