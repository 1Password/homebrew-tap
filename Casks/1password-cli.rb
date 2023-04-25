cask "1password-cli" do
  version "2.17.0"
  sha256 "1d25db6de0d662b15387d4ac2b0bcda2fa6b591c1a0ebdeb03a5fa135409268b"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_apple_universal_v#{version}.pkg"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  pkg "op_apple_universal_v#{version}.pkg"

  uninstall pkgutil: "com.1password.op"

  zap trash: "~/.op"
end
