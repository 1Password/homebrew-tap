cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.34.1"
  sha256 arm:   "101b54dd194fbb6c63276b84f5eee1968be3558e2212519d9f5e26ab24a4ad05",
         intel: "ca4e6b00eedc80a9a134297eb2390ca6039d2c9040ac57a80dbb8a1127823a27"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end
