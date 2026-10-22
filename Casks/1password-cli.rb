cask "1password-cli" do
  arch arm: "arm64", intel: "amd64"

  version "2.41.1"
  sha256 arm:   "2289771b68b521ee3dc1d63a013a6a1c5691e0c53e4c4fe79af8042b6ad3c7f5",
         intel: "e77fc9a8ebb23c176fed7c56ea6e4a7184d2b89957e9a5d9a2feb724e7e0574b"

  url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_darwin_#{arch}_v#{version}.zip"
  name "1Password CLI"
  desc "Command-line interface for 1Password"
  homepage "https://developer.1password.com/docs/cli"

  binary "op"

  zap trash: "~/.op"
end
