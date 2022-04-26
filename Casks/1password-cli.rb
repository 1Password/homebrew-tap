cask "1password-cli" do
  version "2.1.0"
  sha256 "0a7dfff83be4e615bdaefc6ee08f60847492d7259201e42ade0c7ee9dbc58889"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_apple_universal_v#{version}.pkg"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  pkg "op_apple_universal_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
