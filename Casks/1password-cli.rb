cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.42.0"
  sha256 arm:   "216e86c6db491c752ccb7819b3b1851cc8456ea015a1f7c8a58dd103ef0a474e", # arm64
         intel: "917b0d2b41de3d943bb6562331275c43c4b525af6b003eade06248905ddd62b0" #  amd64

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end
