cask "1password-cli" do
  version "2.19.0"
  sha256 "db2fe2fd074fc8ed6dda9470cbda35f354d075c11d4cc64c583db40f964e1fd9"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_apple_universal_v#{version}.pkg"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  pkg "op_apple_universal_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
