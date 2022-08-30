cask "1password-cli" do
  version "2.7.0"
  sha256 "dc712f9065aa250365a15a64325eb80c8a1e7b77bfb0c19ff86a409809d2d632"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_apple_universal_v#{version}.pkg"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  pkg "op_apple_universal_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
