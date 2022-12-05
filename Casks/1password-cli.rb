cask "1password-cli" do
  version "2.9.0"
  sha256 "daa5be07739de5c5e3f4b91f98e008c0be8863aa008864db6f0255be5529f292"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_apple_universal_v#{version}.pkg"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  pkg "op_apple_universal_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
