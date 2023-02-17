cask "1password-cli" do
  version "2.14.0"
  sha256 "a45a0ea04df6f634b3b21687a3f5c54c88ab2acc5f773d72380d0b8dbf553646"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_apple_universal_v#{version}.pkg"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  pkg "op_apple_universal_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
