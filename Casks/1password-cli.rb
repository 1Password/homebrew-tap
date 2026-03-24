cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.33.1"
  sha256 arm:   "8106127624bf55f0bf5ae6f8e2c56398e01db75d64c3088eface33885c854351",
         intel: "4ac94e529b93525d85c58d5a608a514444036897338e65208df9c84113140f94"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end
