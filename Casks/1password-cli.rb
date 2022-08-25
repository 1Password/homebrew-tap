cask "1password-cli" do
  version "2.6.2"
  sha256 "1cc191da8053cc1ed3c2b7ac08dd12607a8cedf70c4a2304bbc6b0ec137ac322"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_apple_universal_v#{version}.pkg"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  pkg "op_apple_universal_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
