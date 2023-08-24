cask "1password-cli" do
  version "2.20.0"
  sha256 "932b405de96fbcff9205a9e21e5a3d2532b52cb46b79f80bb963e10bcb02ed4f"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_apple_universal_v#{version}.pkg"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  pkg "op_apple_universal_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
